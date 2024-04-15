# Title: Назва рецепта.

# Description: короткий опис рецепта.

# Ingredients: список інгредієнтів, кожен з яких має такі властивості:

    # Name: назва інгредієнта.
    # Quantity: необхідна кількість інгредієнта.
    # Unit: одиниця вимірювання (наприклад, грами, чашки).
    # Optional: чи є інгредієнт необов’язковим.
# Instructions: покрокові інструкції щодо приготування за рецептом, включаючи техніку приготування, температуру та час.

# Creation date: дата додавання рецепту
from typing import List

from sqlalchemy import Column, Integer, String, Table, ForeignKey, Boolean, func
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship, sessionmaker, Mapped
from sqlalchemy.sql.sqltypes import DateTime


Base = declarative_base()

recipe_m2m_ingredient = Table(
    "recipe_m2m_ingredient",
    Base.metadata,
    Column("id", Integer, primary_key=True),
    Column("id_recipe", Integer, ForeignKey("recipes.id")),
    Column("id_ingredient", Integer, ForeignKey("ingredients.id"))
)

# @dataclass
class Recipe(Base):
    __tablename__ = "recipes"

    # id: int
    # title: str

    id = Column(Integer, primary_key=True)
    title = Column(String(50), nullable=False)
    description = Column(String)
    instructions = Column(String)
    created_date = Column(DateTime(timezone=True), default=func.now())
    ingredients: Mapped[List["Ingredient"]] = relationship(secondary=recipe_m2m_ingredient)


class Ingredient(Base):
    __tablename__ = "ingredients"

    id = Column(Integer, primary_key=True)
    name = Column(String(50), nullable=False)
    quantity = Column(Integer, nullable=False)
    unit = Column(String(10), nullable=False)
    optional = Column(Boolean, default=False)
    

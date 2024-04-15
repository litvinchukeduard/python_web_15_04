from faker import Faker
from models import Ingredient, Recipe
from random import randint
from typing import List

from session import get_db

fake = Faker(locale='uk_UA')

def create_ingredients():
    db_session = next(get_db())
    for _ in range(10):
        ingredient = Ingredient()
        ingredient.name = fake.first_name()
        ingredient.unit = fake.last_name()
        ingredient.quantity = randint(1, 1000)
        ingredient.optional = False
        db_session.add(ingredient)
    db_session.commit()

def create_recipes():
    db_session = next(get_db())
    for _ in range(10):
        recipe = Recipe()
        recipe.title = fake.first_name()
        recipe.description = fake.last_name()
        recipe.instructions = fake.last_name()
        recipe.ingredients = []
        db_session.add(recipe)
    db_session.commit()

def add_ingredients_to_first_recipe():
    db_session = next(get_db())
    recipe = db_session.query(Recipe).get(1)
    ingredients = db_session.query(Ingredient).all()
    recipe.ingredients = ingredients
    db_session.commit()


if __name__ == '__main__':
    # create_ingredients()
    # create_recipes()
    add_ingredients_to_first_recipe()
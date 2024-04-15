from session import get_db
from models import Ingredient, Recipe

def add_ingredient(args):
    name, quantity, unit, optional = args
    db_session = next(get_db())
    ingredient = Ingredient()
    ingredient.name = name
    ingredient.unit = unit
    ingredient.quantity = int(quantity)
    ingredient.optional = optional == 'True'
    db_session.add(ingredient)
    db_session.commit()


def main():
    while True:
        user_input = input(">>> ")
        command, *args = user_input.strip().split()

        if command == 'exit':
            print("Good bye!")
            break
        elif command == 'add-ingredient': # add-ingredient MyIngredient 100 grams False
            #
        elif command == 'delete-ingredient': # delete id
            #

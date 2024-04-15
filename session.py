from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

# an Engine, which the Session will use for connection
# resources
POSTGRES_URL = "postgresql+psycopg2://postgres:example@localhost:5432/blended_python"
engine = create_engine(POSTGRES_URL)

# a sessionmaker(), also in the same scope as the engine
Session = sessionmaker(engine)

def get_db():
    db = Session()
    try:
        yield db
    finally:
        db.close()

# # we can now construct a Session() and include begin()/commit()/rollback()
# # at once
# with Session.begin() as session:
#     session.add(some_object)
#     session.add(some_other_object)
# # commits the transaction, closes the session

import os
import psycopg2
from pathlib import Path
from dotenv import load_dotenv

env_path = Path(__file__).resolve().parent.parent.parent / ".env"
load_dotenv(dotenv_path=env_path)


class DBHelper:
    _instance = None

    def __new__(cls):
        if cls._instance is None:
            cls._instance = super().__new__(cls)
            cls._instance._connection = None
            
            database_url = os.getenv("DATABASE_URL")
            
            if database_url:
                cls._instance._dsn = database_url
            else:
                cls._instance._dsn = (
                    f"dbname={os.getenv('DB_NAME')} "
                    f"user={os.getenv('DB_USER')} "
                    f"password={os.getenv('DB_PASSWORD')} "
                    f"host={os.getenv('DB_HOST')} "
                    f"port={os.getenv('DB_PORT')}"
                )
                
        return cls._instance

    def get_connection(self):
        if self._connection is None or self._connection.closed:
            if isinstance(self._dsn, dict):
                self._connection = psycopg2.connect(**self._dsn)
            else:
                self._connection = psycopg2.connect(self._dsn)
        return self._connection

    def close_connection(self):
        if self._connection and not self._connection.closed:
            self._connection.close()
            self._connection = None
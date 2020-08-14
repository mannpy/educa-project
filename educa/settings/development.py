from .base import *

DEBUG = True

DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.sqlite3",
        "NAME": os.path.join(BASE_DIR, "db.sqlite3"),
    }
}

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = "some-secret"

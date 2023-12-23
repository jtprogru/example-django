set shell := ["zsh", "-cu"]

# Show help
default:
    just --list

# Run Django development server
rundev:
    poetry run python manage.py runserver

# Generate Django migration
makemigrations:
    poetry run python manage.py makemigrations

# Apply Django migration
migrate:
    poetry run python manage.py migrate

# Full upgrade migrations
mig: makemigrations migrate


# Use the Gitpod full workspace image as the base
FROM gitpod/workspace-full:latest

# Install PostgreSQL and necessary dependencies
USER root
RUN apt-get update && \
    apt-get install -y postgresql postgresql-contrib libpq-dev

# Switch back to gitpod user
USER gitpod

# Install Python packages globally (e.g., Django and psycopg2 for PostgreSQL)
RUN pip install Django psycopg2-binary

# Expose PostgreSQL default port
EXPOSE 5432

# Expose Django default port (if needed for external access)
EXPOSE 8000

# Set up environment variables (optional, but helpful for database connections)
ENV DATABASE_URL=postgres://gitpod:password@localhost:5432/django_db

# Default command to run when the container starts
CMD ["/bin/bash"]

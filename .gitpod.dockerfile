# Use the official Gitpod base image
FROM gitpod/workspace-full:latest

# Install PostgreSQL
RUN sudo apt-get update && sudo apt-get -y install postgresql postgresql-contrib

# Install Python packages
RUN pip install Django psycopg2-binary

# Expose the PostgreSQL port (5432) for use
EXPOSE 5432

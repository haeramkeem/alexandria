# Extended MongoDB

## Purpose of the image

The purpose of this image is to create initial user, password for that user and database for MongoDB container to be created.

This image is an wrapper of the [MongoDB offitial image](https://hub.docker.com/_/mongo) as the offitial image do not initiate them automatically.

## Environment variables

1. `MONGO_INITDB_ROOT_USERNAME`: Initial root user
2. `MONGO_INITDB_ROOT_PASSWORD`: Initiated root user's password
3. `MONGO_INITDB_USERNAME`: Initial user
4. `MONGO_INITDB_PASSWORD`: Initiated user's password
5. `MONGO_INITDB_DATABASE`: Initial database

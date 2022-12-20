#!/bin/bash

# Initiate MongoDB's username, password, database for startup
# @see https://stackoverflow.com/a/52944387

mongo -- "$MONGO_INITDB_DATABASE" <<EOF
    const admin = db.getSiblingDB('admin');
    admin.auth("$MONGO_INITDB_ROOT_USERNAME", "$MONGO_INITDB_ROOT_PASSWORD");

    db.createUser(
        {
            user: "$MONGO_INITDB_USERNAME",
            pwd: "$MONGO_INITDB_PASSWORD",
            roles: [
                {
                    role: "readWrite",
                    db: "$MONGO_INITDB_DATABASE"
                }
            ]
        }
    );
EOF

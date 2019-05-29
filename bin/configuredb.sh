#!/bin/bash

export PGPASSWORD="nodepass"
database="monstersdb"

echo "configuring database: $database"

dropdb -U node_user monstersdb
createdb -U node_user monstersdb

psql -U node_user monstersdb < ./bin/sql/monsters.sql

echo "$database was configured"
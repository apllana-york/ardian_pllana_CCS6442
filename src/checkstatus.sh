#!/bin/sh

echo "Waiting for database at $POSTGRES_HOST:$POSTGRES_PORT..."

until pg_isready -h "$POSTGRES_HOST" -p "$POSTGRES_PORT" -q; do
  echo "Waiting..."
  sleep 2
done

echo "Database is ready!"

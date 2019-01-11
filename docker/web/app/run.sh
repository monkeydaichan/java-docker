#!/bin/ash

set -e

# host="$1"
# shift
cmd="$@"

until psql -h "$DATABASE_HOST" -U "$DATABASE_USER" -c '\l'; do
  >&2 echo "PostgreSQL is unavailable - sleeping"
  sleep 1
done

>&2 echo "PostgreSQL is up - executing command"
exec $cmd
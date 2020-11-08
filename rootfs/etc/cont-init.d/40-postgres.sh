#!/usr/bin/with-contenv sh

mkdir -p /data/postgres
mkdir -p /var/run/postgresql 
chown postgres:postgres /var/run/postgresql
chown -R postgres:postgres /data/postgres
chmod 0700 /data/postgres

if [ -e /data/postgres/postgresql.conf ]; then
  echo "Database already configured"
else
  s6-setuidgid postgres initdb
fi

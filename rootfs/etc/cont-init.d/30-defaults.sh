#!/usr/bin/with-contenv sh

cp -rnv /app/guacamole /data

mkdir -p /config/guacamole
cp -nv /app/guacamole/guacamole.properties /config/guacamole/guacamole.properties
cp -rv /config/guacamole /data

mkdir -p /root/.data/freerdp/known_hosts

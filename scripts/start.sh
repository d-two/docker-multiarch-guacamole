#! /bin/sh
chown -R $PUID:$PGID /config

GROUPNAME=$(getent group $PGID | cut -d: -f1)
USERNAME=$(getent passwd $PUID | cut -d: -f1)

if [ ! $GROUPNAME ]
then
        addgroup -g $PGID <groupname>
        GROUPNAME=<groupname>
fi

if [ ! $USERNAME ]
then
        adduser -G $GROUPNAME -u $PUID -D <username>
        USERNAME=<username>
fi

su $USERNAME -c ''

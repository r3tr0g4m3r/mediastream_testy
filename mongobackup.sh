#!/bin/bash
FECHA=$( /usr/bin/date +%d-%m-%Y )
HORA=$( /usr/bin/date +%H-%M )
TIMESTAMP="${FECHA}_${HORA}"

echo $TIMESTAMP

/usr/bin/mongodump --archive="/mediastream/mongobackup-${TIMESTAMP}.dmp" >> /var/log/mongo_backup.log 2>&1

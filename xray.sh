#!/bin/sh
if [ ! -f UUID ]; then
  UUID="f2006c3f-9d08-4e40-8488-1e7c50f3a347"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"


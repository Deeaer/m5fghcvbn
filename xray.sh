#!/bin/sh
if [ ! -f UUID ]; then
  UUID="bda2f348-5873-466c-95ce-694cfc173c39"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"


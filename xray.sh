#!/bin/sh
if [ ! -f UUID ]; then
  UUID="878ec96b-16ea-4519-a364-18998da0c39c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"


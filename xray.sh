#!/bin/sh
if [ ! -f UUID ]; then
  UUID="cdf1a5ce-b171-4266-a7c9-b1a037f9f6ff"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"


#!/bin/sh
TEMP=$(sensors | grep 'edge' | grep ':[ ]*+[0-9]*.[0-9]*°C' -o | grep '+[0-9]*.[0-9]*°C' -o)
echo "$TEMP" | awk '{ printf(" GPU @ %s \n"), $1 }'

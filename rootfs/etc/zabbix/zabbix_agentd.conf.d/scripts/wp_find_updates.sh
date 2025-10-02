#!/command/with-contenv bash
# SPDX-FileCopyrightText: © 2025 Nfrastack <code@nfrastack.com>
#
# SPDX-License-Identifier: MIT

if [ "$#" -ne 1 ]; then
    echo "Error: Illegal number of parameters"
    exit 1
fi

WPCLI="sudo -u "${NGINX_USER}" /usr/local/bin/wp-cli"
WPUPDATE=""

## Get core update
RESULT=$($WPCLI --path=$1 core check-update | grep -P -m 1 "\d\.\d" | cut -f1)

if [ ! -z "$RESULT" ]; then
  WPUPDATE="core->$RESULT"
fi

## Get plugin updates
while read -r line
do
  WPUPDATE="$WPUPDATE plugin->$line"
done< <($WPCLI --path=$1 plugin status | grep -P "^\sU" | cut -d" " -f3)

# Print output
if [ -z "$WPUPDATE" ]; then
  echo "OK"
else
  echo $WPUPDATE
fi


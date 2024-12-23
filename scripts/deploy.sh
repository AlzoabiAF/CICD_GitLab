#!/bin/bash

PRIVATE_KEY="/home/do6/.ssh/id_rsa"
REMOTE_USER="do6"
REMOTE_DIR="/usr/local/bin"
REMOTE_HOST="192.168.0.177"
ARTIFACTS_DIR="/home/do6/artifacts"
echo "$ARTIFACTS_DIR"/* "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR"
scp "$ARTIFACTS_DIR"/* "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR"
if [ $? -ne 0 ]; then
  echo "Copying artifacts to a remote machine failed"
  exit 1
else
  echo "Successfully copying artifacts to a remote machine"
fi
rm -rf $ARTIFACTS_DIR

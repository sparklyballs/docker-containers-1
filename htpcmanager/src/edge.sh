#!/bin/bash
update=$EDGE
if [  "$NZBDRONE" -eq 0 ]; then
echo "not selected nzbdrone branch"
gitclone="-b master https://github.com/styxit/HTPC-Manager.git"
else
echo "nzbdrone branch selected"
gitclone="-b master2 https://github.com/Hellowlol/HTPC-Manager.git"
update=$((update+1))
fi
# Does the user want the edge version
if [ "$update" -eq 0 ]; then
  echo "edge not requested"
else
  rm -rf /opt/HTPC-Manager
  git clone $gitclone /opt/HTPC-Manager
fi

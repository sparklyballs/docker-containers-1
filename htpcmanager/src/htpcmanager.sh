#!/bin/bash
if [  "$NZBDRONE" -eq 0 ]; then
datdir="/config/htpcmanager"
else
datdir="/config/htpcmanager-sonarr"
fi
python /opt/HTPC-Manager/Htpc.py --datadir $datdir

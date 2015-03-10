docker-htpcmanager
==================

This is a Dockerfile setup for htpcmanager.  Built in updater to go to current release - http://htpc.io/

You may need to start/stop Docker after initial install to allow updater to work.

    docker run -p 8085:8085 -v /path/to/config:/config -d --name htpcmanager smdion/docker-htpcmanager

EDGE
====

Added EDGE compatibility to pull dirctly from git

    docker run -p 8085:8085 -e EDGE=1 -v /path/to/config:/config -d --name htpcmanager smdion/docker-htpcmanager

NZBDrone GIT Branch from Hellowlol (https://github.com/Hellowlol/HTPC-Manager)
====

Add the -e NZBDRONE=1 variable to your install for the NZBDRONE Module. If nzbdrone variable is set to 1 then container will update to latest nzdbrone regardless if EDGE is set or not.

    docker run -p 8085:8085 -e NZBDRONE=1 -v /path/to/config:/config -d --name htpcmanager smdion/docker-htpcmanager

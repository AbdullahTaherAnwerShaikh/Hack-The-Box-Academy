#!/bin/bash

#retrieves pid of the latest server
pid=$(cat /tmp/currentServer.pid)

#checks whether server is running or not, if running echos message and if not it will restart
if kill -0 $pid 2>/dev/null; then
    echo "Server is running as intended with PID: $pid"
else
    ./starter.sh --restart&
fi

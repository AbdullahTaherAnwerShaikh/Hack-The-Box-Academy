#!/bin/bash

#Start a python server in the bg
python3 -m http.server 8080 &

#retrieves the servers pid using !
pid=$!

#storing the pid of the server to a temporary file for regular check
$pid > /tmp/currentServer.pid

#retrieves start time of the server
time=$(ps -p $pid -o lstart=)

#logs data efficiently using blocks
{
    echo "Process ID: $pid"
    echo "Startup Time: $time"
    echo "-------------------"
} >> /home/htb-ac-2418095/serverLog.log



#The moment Bash sends that process to the bg, the Linux operating system assigns it a PID (e.g., 4821). Bash instantly saves that number into its temporary memory slot named !. Each script has a local !, although it can be changed if another process is sent to the bg.

#!/bin/bash

top -b -n 1 >> /home/htb-ac-2418095/logbook.log
date >> /home/htb-ac-2418095/logbook.log
users >> /home/htb-ac-2418095/logbook.log
echo "----------------" >> /home/htb-ac-2418095/logbook.log


#Used to log data into logbook at regular intervals using either crontab or systemd timer

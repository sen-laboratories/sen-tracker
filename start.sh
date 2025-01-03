#!/bin/bash

echo Exiting original Tracker...

launch_roster stop x-vnd.be-trak && \
echo Launching Tracker.SEN... && \
cd generated && \
Tracker &
cd -

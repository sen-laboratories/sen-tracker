#!/bin/bash
TRACKER_SRC_DIR=$HOME/Develop/haiku/src/kits/tracker
OLD_DIR="$PWD"

printf "Building Tracker from $TRACKER_SRC_DIR...\n"

cd "$TRACKER_SRC_DIR"
jam -qj$(nproc) Tracker

cd "$OLD_DIR"

if [ $? -eq 0 ]; then
  printf "\nDONE.\n"
else
  printf "\nERROR, aborting.\n"
  exit 1;
fi

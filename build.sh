#!/bin/bash
TRACKER_SRC_DIR=$HOME/Develop/haiku/src/kits/tracker
HAIKU_OUT_DIR=$HOME/Develop/haiku/generated/objects/haiku/x86_64/release

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

printf "copying over Tracker and libs...\n"

cp $HAIKU_OUT_DIR/kits/tracker/libtracker.so ./generated/lib/ && \
cp $HAIKU_OUT_DIR/apps/tracker/Tracker ./generated/Tracker

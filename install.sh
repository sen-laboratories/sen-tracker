#!/bin/bash
HAIKU_OUT_DIR=$HOME/Develop/haiku/generated/objects/haiku/x86_64/release

cp $HAIKU_OUT_DIR/kits/tracker/libtracker.so ./generated/lib/ && \
cp $HAIKU_OUT_DIR/apps/tracker/Tracker ./generated/Tracker && \
echo "TrackerSEN updated and ready to roll." || \
echo "Error updating TrackerSEN."

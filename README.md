<p align="center">
  <img src="images/sen-tracker-logo.jpg" width=360 />
</p>

<h1 align="center">SEN Tracker</h1>

<p align="center">
  A semantic take on Tracker, the Haiku file manager. Keeps changes to a sane level and tries to "just" blend in but offer some magic SEN sprinkle dust.
</p>

# About

This repository contains the changes to Haiku Tracker for integrating with SEN and providing support for linked semantic navigation and file manipulation.

# Build

Tracker is part of Haiku, so as to not complicate things, SEN specific adaptations are kept within a fork of the Haiku source.
For building, you need to check out (for trying out) or fork (for development) haiku first.

Adapt the variable(s) at the start of the scripts according to your setup.
Then run:
* `./build.sh` -- builds Tracker in the original haiku sourcetree and copies over relevant artifacts to `./generated`
* `./start.sh` -- stops system Tracker and launches the custom Tracker in all its semantic glory!

The `build` script uses `jam`'s `-j` option to build with all available cores by default, feel free to adapt to your needs.

The `start` script takes care of really quitting Tracker for good, as it is set on auto-restart, since it's an important system application.
This restart-logic can be circumvented via the command in the script:
``` 
launch_roster stop x-vnd.be-trak
``` 

# Details

If something goes wrong, it often helps to have some understanding of what is going on behind the scenes:

Tracker src in haiku is located at
```
haiku/src/kits/tracker
```

after build, generated `libtracker.so` can be found in
```
haiku/generated/objects/haiku/x86_64/release/apps/tracker/Tracker
```

Tracker itself is just a shell application using libtracker and located in
```
haiku/src/apps/tracker/
```
needs also to be rebuilt.

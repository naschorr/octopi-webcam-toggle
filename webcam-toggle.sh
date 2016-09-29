#!/bin/bash

if [[ -n $(pgrep mjpg_streamer) ]]
then
        # mjpg_streamer is running
        sudo service webcamd stop
else
        # mjpg_streamer isn't running
        sudo service webcamd start
fi

#!/bin/bash

set -e

WIDTH=640
HEIGHT=480
FPS=10

cd ~/mjpg-streamer/mjpg-streamer-experimental
./mjpg_streamer -o "output_http.so -l 0.0.0.0" -i "input_uvc.so -r ${WIDTH}x${HEIGHT} -f ${FPS} -d /dev/video0"

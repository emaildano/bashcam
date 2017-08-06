#!/bin/bash
# record.sh

# */15 * * * * /home/ubuntu/record.sh

# Filename
name="`date +%Y-%m-%d_%H.%M`"

# Vars
USER=ENV['username']
PASS=ENV['password']
ADDR=ENV['host']
BASEpath=ENV['base_path']
RECpath=$BASEpath . ENV['rec_path']
PORT=ENV['port']

# Make folder
sudo mkdir -p $RECpath $RECpath/path/to/folder $RECpath/path/to/another/folder

# -i source (URL)
# -r frames per second
# -t duration (in seconds)

# Cam 1
sudo ffmpeg \
-rtsp_transport tcp \
-i rtsp://$USER:$PASS@$ADDR:$PORT/live/ch1 \
-r 10 \
-vcodec copy \
-an -t 900 $RECpath/path/$name.mp4 </dev/null >/dev/null 2>/tmp/cam.log &

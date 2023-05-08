#! /bin/sh

save_dir="/tmp/df_save"

echo HEYO STARTING DWARF FORTRESS

docker run \
-it \
-u 0 \
--env DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $save_dir:/home/ubuntu/dwarf/data/save \
--network=host \
dwarf 

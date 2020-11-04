#!/bin/sh
set -e

path=$1
name=$2
flavor=$3
keymap=$4
destDir="/qmk_firmware/keyboards/$name"

echo "==========================="
echo "path: '$path'"
echo "name: '$name'"
echo "flavor: '$flavor'"
echo "keymap: '$keymap'"
echo "==========================="

echo "Copying '$path/*' to '$destDir'"
mkdir "$destDir"
cp -r "$path/"* "$destDir"

echo "Starting compilation..."
cd /qmk_firmware
make "$name/$flavor:$keymap"
echo "Done!"
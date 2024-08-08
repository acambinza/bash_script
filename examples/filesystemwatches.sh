#! /bin/bash

file="/tmp/watchfolder"
mkdir -p $file

inotifywait -m $file
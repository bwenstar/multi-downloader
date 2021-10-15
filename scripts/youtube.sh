#!/bin/bash

YOUTUBE_LINK=$1
START_STAMP=$2
CUT_DURATION=$3

if [ -z "$4" ]; then
    FILE_OUTPUT="../output/output.mp4"
else
    FILE_OUTPUT=$4
fi

ffmpeg -ss $START_STAMP -t $CUT_DURATION -i $(youtube-dl -f best -g $YOUTUBE_LINK) $FILE_OUTPUT

#!/bin/sh
#creates an audio file between two timestamps in a larger audio file
#usage: ./split.sh <album-file> <start-time> <end-time> <track-name.extension>
#time format: 00:00:00 (hours:mins:secs)

#ffmpeg -i $1 -acodec copy -ss $2 -to $3 $4

#usage: ./split.sh <album-file>

COUNT=1

while true; do
	echo "Track name: "
	read NAME
	echo "Track start: "
	read START
	echo "Track end: "
	read END

	ffmpeg -i $1 -acodec copy -ss $START -to $END "$COUNT-$NAME"
	COUNT=$((COUNT + 1))


done

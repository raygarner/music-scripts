#!/bin/sh
#usage: ./dl_playlist.sh <link> <path>

#download each track from a youtube playlist and store it at the specified path
youtube-dl -f bestaudio -o "$2%(playlist_index)s-%(title)s.%(ext)s" $1

#rename spaces in tracks with underscores
perl-rename 'y/ /_/'  $1*

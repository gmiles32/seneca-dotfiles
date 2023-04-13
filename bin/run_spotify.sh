#!/bin/bash


if [ -z "$(spotifyctl -q status --format '%artist%: %title%')" ]
then
	spotify &> ~/.local/log/spotify_log &
else
	spotifyctl -q playpause
fi

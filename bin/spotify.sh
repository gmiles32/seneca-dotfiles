#!/bin/bash


output=$(spotifyctl -q status --format '%artist%: %title%')

if [ -z "$output" ]
then
	echo "Nothing Playing"
else
	echo "$output"
fi

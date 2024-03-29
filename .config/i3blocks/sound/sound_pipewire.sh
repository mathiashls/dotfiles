#!/bin/bash
# This project is libre, and licenced under the terms of the
# DO WHAT THE FUCK YOU WANT TO PUBLIC LICENCE, version 3.1,
# as published by dtf on July 2019. See the LICENSE file or
# https://ph.dtf.wtf/w/wtfpl/#version-3-1 for more details.

# Displays the default device, volume, and mute status for i3blocks
# Required pkgs (voidlinux) are:
#	pipewire
#	pamixer
#	pulseaudio-utils

AUDIO_HIGH_SYMBOL=' '

AUDIO_MED_THRESH=50
AUDIO_MED_SYMBOL=' '

AUDIO_LOW_THRESH=0
AUDIO_LOW_SYMBOL=' '

AUDIO_MUTED_SYMBOL=' '

LONG_FORMAT=0
SHORT_FORMAT=1
USE_PERCENT=1
USE_DESCRIPTION=1

while getopts F:f:pdH:M:L:X:T:t:C:c:h opt; do
	case "$opt" in
		F) LONG_FORMAT="$OPTARG" ;;
		f) SHORT_FORMAT="$OPTARG" ;;
		p) USE_PERCENT=0 ;;
		d) USE_DESCRIPTION=1 ;;
		H) AUDIO_HIGH_SYMBOL="$OPTARG" ;;
		M) AUDIO_MED_SYMBOL="$OPTARG" ;;
		L) AUDIO_LOW_SYMBOL="$OPTARG" ;;
		X) AUDIO_MUTED_SYMBOL="$OPTARG" ;;
		T) AUDIO_MED_THRESH="$OPTARG" ;;
		t) AUDIO_LOW_THRESH="$OPTARG" ;;
		C) DEFAULT_COLOR="$OPTARG" ;;
		c) MUTED_COLOR="$OPTARG" ;;
		h) printf "help" ;;
		*) printf "help" ;;
	esac
done

function move_sinks_to_new_default {
	DEFAULT_SINK=$1
	pactl info | grep 'Default Sink' | while read SINK; do
		pactl set-default-sink $SINK
	done
}

function print_format {
	[[ $USE_PERCENT == 0 ]] && PERCENT=""
	case "$1" in
		1) echo "$SYMBOL$VOL$PERCENT [$NAME]" ;;
		2) echo "$SYMBOL$VOL$PERCENT [$INDEX]";;
		3) echo "$SYMBOL$VOL$PERCENT" ;;
		*) echo "$SYMBOL$VOL$PERCENT [$INDEX:$NAME]" ;;
	esac
}

function print_block {
	for name in NAME; do
		read $name
	done < <(pactl info | grep 'Default Sink:')
	NAME=$(echo "$NAME" | awk '{print $3}')
	DESCRIPTION=$(pactl list sinks | grep -B2 -A1 "$NAME$" | grep Description | cut -f2- -d\ )
	INDEX=$(pactl list sinks | grep -B2 -A1 "$NAME$" | grep Sink | cut -f2 -d\#)

	if [[ $USE_DESCRIPTION == 1 ]]; then
		NAME="$DESCRIPTION"
	fi

	[[ $USE_PERCENT == 1 ]] && VOL="$(pamixer --get-volume-human)" || VOL=$(pamixer --get-volume)

	MUTED=$(pamixer --get-mute)

	if [[ $MUTED =~ "false" ]] ; then
		SYMBOL=$AUDIO_HIGH_SYMBOL
		[[ ${VOL/\%/} -le $AUDIO_MED_THRESH ]] && SYMBOL=$AUDIO_MED_SYMBOL
		[[ ${VOL/\%/} -le $AUDIO_LOW_THRESH ]] && SYMBOL=$AUDIO_LOW_SYMBOL
	else
		SYMBOL=$AUDIO_MUTED_SYMBOL
	fi

	if [[ $SUBSCRIBE == 1 ]] ; then
		print_format "$LONG_FORMAT"
	else
		print_format "$LONG_FORMAT"
		print_format "$SHORT_FORMAT"
	fi
}

SUBSCRIBE=1
print_block
while read -r line ; do
    echo "$line" | grep "change" > /dev/null && print_block
done < <(pactl subscribe)

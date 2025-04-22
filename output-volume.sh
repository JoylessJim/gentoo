#!/bin/bash
# Get default sink name
default_sink=$(pactl get-default-sink)
# Get mute status
mute_status=$(pactl get-sink-mute "$default_sink" | awk '{print $2}')

if [ "$mute_status" = "yes" ]; then
    echo "Muted"
else
    # Get volume percentage (first channel only)
    volume_percent=$(pactl get-sink-volume "$default_sink" | grep -oP '\d+?(?=%)' | head -n1)
    echo "${volume_percent}%"
fi

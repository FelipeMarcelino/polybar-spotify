#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll -l 30 \
        --delay 0.1 \
        --scroll-padding "  " \
        --match-command "$XDG_POLYBAR/cuts/scripts/scripts/polybar-spotify/get_spotify_status.sh --status" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --update-check true "$XDG_POLYBAR/cuts/scripts/scripts/polybar-spotify/get_spotify_status.sh" &

wait


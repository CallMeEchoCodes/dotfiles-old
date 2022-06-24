#!/bin/bash

pkill polybar
polybar -r main &

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload main &
done


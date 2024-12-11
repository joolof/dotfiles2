#!/usr/bin/env bash
# This is because polybar needs to wait for 
# wal to finish starting up, otherwise it may not show up.
# while pgrep -x wal > /dev/null; do sleep 1; done

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
#while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --config=~/.config/polybar/config.ini --reload main &
    # MONITOR=$m polybar --config=~/.config/polybar/config.ini --reload music &
    # MONITOR=$m polybar --config=~/.config/polybar/config.ini --reload system &
    # MONITOR=$m polybar --config=~/.config/polybar/config.ini --reload task &
done
# polybar mainbar &

#echo "Bars launched..."

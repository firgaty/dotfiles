#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    echo $m
    MONITOR=$m polybar top &
    MONITOR=$m polybar bottom &
  done
else
  MONITOR=eDP-1 polybar top &
  MONITOR=DP-1-1 polybar top &
  MONITOR=eDP-1 polybar bottom &
fi

nm-applet &

echo "Bars launched..."

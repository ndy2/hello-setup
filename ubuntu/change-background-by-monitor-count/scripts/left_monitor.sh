#!/bin/bash
PREV_MONITOR_COUNT=$(xrandr -d :0 -q | grep ' connected' | wc -l)
while true
do
  CURRENT_MONITOR_COUNT=$(xrandr -d :0 -q | grep ' connected' | wc -l)
  if [ "$CURRENT_MONITOR_COUNT" -eq 1 ] && [ "$PREV_MONITOR_COUNT" -eq 2 ]; then
    gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/empty.png

  elif [ "$CURRENT_MONITOR_COUNT" -eq 2 ] && [ "$PREV_MONITOR_COUNT" -eq 1 ]; then
    gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/coffee_right.png

  fi
  sleep 3
  PREV_MONITOR_COUNT=$CURRENT_MONITOR_COUNT
done

#!/bin/bash
target=$(niri msg pick-window | grep PID)
targetPID=${target:7}
kill -9 $targetPID

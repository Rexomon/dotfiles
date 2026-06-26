#!/bin/bash

FILE="$HOME/.config/niri/dms/outputs.kdl"

RES_1080="1920x1080@120.001"
RES_768="1366x768@120.049"

if grep -q "mode \"$RES_1080" "$FILE"; then
    # Switch mode 1080 to 768
    sed -i "s/mode \"$RES_1080/mode \"$RES_768/g" "$FILE"
else
    # Switch mode 768 to 1080
    sed -i "s/mode \"$RES_768/mode \"$RES_1080/g" "$FILE"
fi

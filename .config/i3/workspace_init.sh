#!/bin/bash
sleep 3

i3-msg "focus output HDMI-0; workspace 1"
i3-msg "focus output HDMI-0; workspace 2"
i3-msg "focus output HDMI-0; workspace 3"
i3-msg "focus output HDMI-0; workspace 4"
i3-msg "focus output HDMI-0; workspace 5"

i3-msg "focus output DP-2; workspace 6"
i3-msg "focus output DP-2; workspace 7"
i3-msg "focus output DP-2; workspace 8"
i3-msg "focus output DP-2; workspace 9"
i3-msg "focus output DP-2; workspace 10"

i3-msg "focus output DP-2; workspace 6"
i3-msg "focus output HDMI-0; workspace 1"

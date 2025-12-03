#!/bin/bash
# Map left and right Command (Super) keys to Ctrl

# Clear existing Super mappings
xmodmap -e "remove mod4 = Super_L Super_R"

# Map Super keys to Control
xmodmap -e "keycode 133 = Control_L"   # Left Command
xmodmap -e "keycode 134 = Control_R"   # Right Command

# Add them as Control modifiers
xmodmap -e "add Control = Control_L Control_R"

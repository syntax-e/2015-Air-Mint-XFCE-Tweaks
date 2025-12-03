#!/bin/bash

# Update package lists
echo "Updating package lists..."
sudo apt update

# Install applications
echo "Installing applications..."
APPS="conky ulauncher plank touchegg touche tlp tlp-rdw hardinfo chromium-browser psensor"

for app in $APPS; do
    echo "Installing $app..."
    sudo apt install -y "$app"
    if [ $? -ne 0 ]; then
        echo "Warning: Could not install $app. Please check if the package name is correct or if it's available in your repositories."
    fi
done

echo "Application installation script finished."
echo "Please check the output for any warnings or errors."

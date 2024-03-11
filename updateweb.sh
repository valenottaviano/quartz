#!/bin/bash


# Change to the destination directory

cd /home/winston/Documents/quartz/
# Add all changes to Git
git add .

# Commit the changes with a message
git commit -m "Updated with new files"

# Push the changes to the GitHub repository
git push

echo "GitHub repository updated successfully."

# End of the script


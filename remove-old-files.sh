#!/bin/bash

# Accept user input
read -p "Enter the directory path: " directory
read -p "Enter the number of days to define 'old' files: " days


# Find all files that are older than the specified number of days
old_files=$(find $directory -type f -mtime +$days)


# Display the old files
echo "The following files are older than $days days:"
echo "$old_files"


# Checking the number of older files
if [ -z $old_files ]; then
  echo "NO files are older then $days days."
else
  # If the number of files > 0
  # Get confirmation from the user
  read -p "Do you want to delete these files? (y/N) " response


  # Delete the old files if the user confirms
  if [[ $response =~ ^[Yy]$ ]]; then
    echo "Deleting old files..."
    rm -f $old_files
  else
    echo "No files deleted."
  fi

fi

#!/bin/bash

# Ask user to provide GitHub URL
read -p "Enter the GitHub URL of the repository: " github_url

# Configure Git to handle line endings properly
git config --global core.autocrlf input

# Add a new file with Unix-style line endings
echo -e "This is a new file created by the script.\nThis is the second line." > new_file.txt

# Commit the file
git add new_file.txt
git commit -m "Add new_file.txt"

# Set the remote URL to use SSH for authentication
git remote set-url origin $github_url

# Push the changes to GitHub repository using SSH
git push origin master

# Display success message
echo "Changes pushed successfully to GitHub repository."


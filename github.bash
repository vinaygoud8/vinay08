#!/bin/bash

# Ask user to provide GitHub URL
read -p "Enter the GitHub URL of the repository: " github_url

# Add a new file
echo "This is a new file created by the script." > new_file.txt

# Commit the file
git add new_file.txt
git commit -m "Add new_file.txt"

# Push the changes to GitHub repository
git push $github_url

# Display success message
echo "Changes pushed successfully to GitHub repository."


#!/bin/bash

# Define variables
REPO_URL=" https://AbhishekDhondge@bitbucket.org/projeckt-kube/basic_infra_app-1_tf.git"  # Replace with your repo URL
LOCAL_PATH="/Users/abhishek.dhondge/Desktop"  # Replace with your local path
VARIABLE_NAME="oldVariableName"  # Replace with the variable you want to change
NEW_VARIABLE_NAME="newVariableName"  # Replace with the new variable name
FILE_PATH="/path/to/file"  # Replace with the file you want to change
NEW_FILE_PATH="/new/path/to/file"  # Replace with the new file path
BRANCH_NAME="new-branch"  # Replace with your branch name

# Clone the repo
git clone $REPO_URL $LOCAL_PATH

# Change directory to the cloned repo
cd $LOCAL_PATH

# Create a new branch and switch to it
git checkout -b $BRANCH_NAME

# Make changes to the file
# Replace variable names
find . -type f -exec sed -i 's|'$VARIABLE_NAME'|'$NEW_VARIABLE_NAME'|g' {} \;

# Replace file paths
find . -type f -exec sed -i 's|'$FILE_PATH'|'$NEW_FILE_PATH'|g' {} \;

# Add changes to git
git add .

# Commit the changes
git commit -m "Updated variable names and file paths"

# Push changes to GitHub
git push origin $BRANCH_NAME

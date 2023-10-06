#!/bin/bash

# Clone the GitHub repository
git clone ${1}

# Create and commit the README.md file
cd $1
echo "# Mon README" > README.md
git add .
git commit -m "Initial commit"
git push origin master

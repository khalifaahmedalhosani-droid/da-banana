#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

REPO_NAME="banana-repo"
BANANA_URL="https://upload.wikimedia.org/wikipedia/commons/8/8a/Banana-Single.jpg"

echo "Creating directory for your repository..."
mkdir -p "$REPO_NAME"
cd "$REPO_NAME"

echo "Initializing git repository..."
git init -b main

echo "Downloading the sacred banana image..."
curl -s -L "$BANANA_URL" -o banana.jpg

echo "Adding image to git tracking..."
git add banana.jpg

echo "Committing the banana..."
git commit -m "Add single banana"

echo "Done! Repository is ready."
echo ""
echo "To link it to GitHub and push, run:"
echo "  cd $REPO_NAME"
echo "  git remote add origin https://github.com/YOUR-USERNAME/banana.git"
echo "  git push -u origin main"

#!/bin/bash

# This script deploys the built website to GitHub Pages manually
# Execute this script from the WEB directory

echo "Starting manual deployment to GitHub Pages..."

# Create a temporary directory for the gh-pages branch
rm -rf gh-pages-temp
mkdir gh-pages-temp
cd gh-pages-temp

# Initialize git
git init
git config --local user.email "deployment@example.com"
git config --local user.name "GitHub Pages Deployment Script"

# Create a new orphan branch (no history) named gh-pages
git checkout --orphan gh-pages

# Copy the dist folder contents
cp -r ../dist/* .

# Create a .nojekyll file to prevent Jekyll processing
touch .nojekyll

# Add all files
git add .

# Commit
git commit -m "Manual deployment to GitHub Pages"

# Add the remote repository
git remote add origin https://github.com/Aman-Sigroha/WILDWARDEN.git

# Force push to gh-pages branch
git push -f origin gh-pages

# Clean up
cd ..
rm -rf gh-pages-temp

echo "Deployment complete! Your site should be available at https://aman-sigroha.github.io/WILDWARDEN/" 
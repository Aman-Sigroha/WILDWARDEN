# This script deploys the built website to GitHub Pages manually
# Execute this script from the WEB directory

Write-Host "Starting manual deployment to GitHub Pages..." -ForegroundColor Green

# Create a temporary directory for the gh-pages branch
if (Test-Path -Path "gh-pages-temp") {
    Remove-Item -Path "gh-pages-temp" -Recurse -Force
}
New-Item -Path "gh-pages-temp" -ItemType Directory | Out-Null
Set-Location -Path "gh-pages-temp"

# Initialize git
git init
git config --local user.email "deployment@example.com"
git config --local user.name "GitHub Pages Deployment Script"

# Create a new orphan branch (no history) named gh-pages
git checkout --orphan gh-pages

# Copy the dist folder contents
Copy-Item -Path "../dist/*" -Destination "." -Recurse

# Create a .nojekyll file to prevent Jekyll processing
New-Item -Path ".nojekyll" -ItemType File | Out-Null

# Add all files
git add .

# Commit
git commit -m "Manual deployment to GitHub Pages"

# Add the remote repository
git remote add origin https://github.com/Aman-Sigroha/WILDWARDEN.git

# Force push to gh-pages branch
git push -f origin gh-pages

# Clean up
Set-Location -Path ".."
Remove-Item -Path "gh-pages-temp" -Recurse -Force

Write-Host "Deployment complete! Your site should be available at https://aman-sigroha.github.io/WILDWARDEN/" -ForegroundColor Green 
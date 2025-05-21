const ghpages = require('gh-pages');
const path = require('path');

// These options can be adjusted based on your needs
const options = {
  branch: 'gh-pages',
  repo: 'https://github.com/Aman-Sigroha/WILDWARDEN.git',
  message: 'Auto-deploy from custom script [ci skip]',
  silent: false,
  dotfiles: true
};

// Run the deployment
ghpages.publish('dist', options, function(err) {
  if (err) {
    console.error('Error deploying to GitHub Pages:', err);
    process.exit(1);
  } else {
    console.log('Successfully deployed to GitHub Pages!');
    process.exit(0);
  }
}); 
(function() {
  'use strict';
  const root = require('./helpers.js').root;
  const path = require('path');
  const _ = require('lodash');
  const fs = require('fs-extra'); // Like fs, but moreso. https://www.npmjs.com/package/fs-extra#ensuresymlinksrcpath-dstpath-type-callback
  const sharp = require('sharp'); // JS Image Processing lib.
  // read the config file to get the list of photo paths and their properties
  // Convert the photos and write them to the target directory
  // Load the template
  // Render out to the destination

  // Clear the photos out of the asset directory
  fs.removeSync(root('src', 'assets'));
  let options = JSON.parse(fs.readFileSync(root('script', 'photos.json')).toString());

  console.log('Generating images...');
  let promises = [];
  let photos = options.photos.map(function(photo) {
    let base = path.basename(photo.file);
    let image = sharp(photo.file);
    let srcSet = options.sizes.map(function(size) {
      let destPath = size.toString() + '/' + base;
      fs.mkdirsSync(path.dirname(root('src', 'assets', destPath)));
      image.clone()
        .resize(size);
      promises.push(image.toFile(root('src', 'assets', destPath)));
      return ['/assets/' + destPath, size.toString() + 'w'];
    });

    return {
      src: srcSet[0][0],
      srcset: srcSet.map(function(pathPair) { return pathPair.join(' '); }).join(',')
    };
  });

  Promise.all(promises).then(function(results) {
    console.log('Images Generated.');
  });

  console.log('Compiling template...');
  let template = fs.readFileSync(root('script', 'photos.elm.ejs'));
  let compiled = _.template(template);
  let rendered = compiled({ photos: photos });
  fs.writeFileSync(root('src', 'Photos.elm'), rendered);
  console.log('Template finished.');
})();

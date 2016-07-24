(function() {
  'use strict';
  const root = require('./helpers.js').root;
  const path = require('path');
  const _ = require('lodash');
  const fs = require('fs-extra'); // Like fs, but moreso. https://www.npmjs.com/package/fs-extra#ensuresymlinksrcpath-dstpath-type-callback
  const Jimp = require('jimp'); // JS Image Processing lib.
  // read teh config file to get the list of photo paths and their properties
  // Convert the photos and write them to the target directory
  // Load the template
  // Render out to the destination

  // Clear the photos out of the asset directory
  fs.remove(root('src', 'assets'));
  let options = JSON.parse(fs.readFileSync(root('script', 'photos.json')).toString());

  let photos = options.photos.map(function(photo) {
    let base = path.basename(photo.file);
    let srcSet = options.sizes.map(function(size) {
      let destPath = size.toString() + '/' + base;
      fs.mkdirsSync(path.dirname(root('src', 'assets', destPath)));
      Jimp.read(photo.file).then(function(p) {
        p.resize(Jimp.AUTO, size)
          .quality(80)
          .write(root('src', 'assets', destPath));
      });
      return ['/assets/' + destPath, size.toString() + 'w'];
    });

    return {
      src: srcSet[0][0],
      srcset: srcSet.map(function(pathPair) { return pathPair.join(' '); }).join(',')
    };
  });

  let template = fs.readFileSync(root('script', 'photos.elm.ejs'));
  let compiled = _.template(template);
  let rendered = compiled({ photos: photos });
  fs.writeFileSync(root('src', 'Photos.elm'), rendered);
})();

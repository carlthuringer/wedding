(function() {
  'use strict';
  const root = require('./helpers.js').root;
  const path = require('path');
  const _ = require('lodash');
  const fs = require('fs-extra');
  // read teh config file to get the list of photo paths and their properties
  // Convert the photos and write them to the target directory
  // Load the template
  // Render out to the destination

  let options = JSON.parse(fs.readFileSync(root('script', 'photos.json')).toString());
  // Make sure the destination directory exists

  fs.mkdirsSync(options.destination);

  let photos = options.photos.map(function(photo) {
    let base = path.basename(photo.file);
    // This just copies the file.
    let infile = fs.createReadStream(root('.', photo.file));
    // Now we'll make a copy for each size. but we don't actually resize yet.
    options.sizes.forEach(function(size) {
      infile.pipe(writeFile(base + "." + size));
    });

    // Though first perhaps we can just write files.

    return {
      src: path.join("assets", base),
      srcset: [path.join("assets", base) + " 100w"].join(',')
    };
  });

  let template = fs.readFileSync(root('script', 'photos.elm.ejs'));
  let compiled = _.template(template);
  let rendered = compiled({ photos: photos });
  fs.writeFileSync(root('src', 'Photos.elm'), rendered);

  function writeFile(fileName) {
    return fs.createWriteStream(root(options.destination, fileName));
  }

})();

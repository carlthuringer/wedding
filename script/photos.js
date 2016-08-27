(function() {
  'use strict';
  const root = require('./helpers.js').root;
  const path = require('path');
  const _ = require('lodash');
  const fs = require('fs-extra'); // Like fs, but moreso. https://www.npmjs.com/package/fs-extra
  const sharp = require('sharp'); // JS Image Processing lib.
  // read the config file to get the list of photo paths and their properties
  // Convert the photos and write them to the target directory
  // Load the template
  // Render out to the destination

  // Clear the photos out of the asset directory
  fs.removeSync(root('src', 'assets'));
  let config = JSON.parse(fs.readFileSync(root('script', 'photos.json')).toString());

  let photos = [];
  let relativeTo = pathRelativeTo(config.source);
  fs.walk(config.source)
    .on('data', function(item) {
      if(path.extname(item.path) == '.jpg') photos.push(item.path);
    })
    .on('end', function() {
      generatePhotos(photos);
    });

  function generatePhotos(photos) {
    console.log('Generating images...');
    let promises = [];
    let processed = {};
    photos.forEach(function(photo) {
      let group = _.camelCase(relativeTo(path.dirname(photo)));
      let base = path.basename(photo, path.extname(photo));

      let image = sharp(photo);

      let srcSet = config.sizes.map(function(size) {
        let dest = root('src', 'assets', group, `${base}_${size}.jpg`)
        fs.ensureDirSync(path.dirname(dest));
        image.clone()
          .resize(size);
        promises.push(image.toFile(dest));

        return `${path.join('/assets', group, path.basename(dest))} ${size.toString()}w`;
      });

      if(typeof processed[group] == 'undefined') {
        processed[group] = {};
      }

      processed[group][base] = {
        src: path.join('/assets', group, `${base}_${config.sizes[0]}.jpg`),
        srcSet: srcSet.join(',')
      }
    });

    Promise.all(promises).then(function(results) {
      console.log('Images Generated.');
      generateTemplate(processed);
    });
  }

  function generateTemplate(photo_data) {
    console.log('Compiling template...');
    let template = fs.readFileSync(root('script', 'photos.elm.ejs'));
    try {
      let compiled = _.template(template);
      let rendered = compiled({ photos: photo_data });
      fs.writeFileSync(root('src', 'Photos.elm'), rendered);
      console.log('Template finished.');
    } catch(ex) {
      console.log(ex)
    }
  }

  function pathRelativeTo(root) {
    let rootPath = fs.realpathSync(root);
    return function(p) {
      return path.relative(rootPath, p);
    }
  }
})();

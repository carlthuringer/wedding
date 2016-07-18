(function() {
    'use strict';
    const root = require('./helpers.js').root;
    const path = require('path');
    const _ = require('lodash');
    const fs = require('fs');
    // read teh config file to get the list of photo paths and their properties
    // Convert the photos and write them to the target directory
    // Load the template
    // Render out to the destination

    let options = JSON.parse(fs.readFileSync(root('script', 'photos.json')).toString());
    // first let's just copy the photo
    let photos = options.photos.map(function(photo) {
        let base = path.basename(photo.file);
        // Just copy file
        fs.createReadStream(root('.', photo.file)).pipe(fs.createWriteStream(root(options.destination, base)));
        return {
            src: path.join("assets", base),
            srcset: [path.join("assets", base) + " 100w"].join(',')
        };
    });

    let template = fs.readFileSync(root('script', 'photos.elm.ejs'));
    let compiled = _.template(template);
    let rendered = compiled({ photos: photos });
    fs.writeFileSync(root('src', 'Photos.elm'), rendered);

})();

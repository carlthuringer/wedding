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
    console.log(options);
    // first let's just copy the photo
    options.photos.forEach(function(photo) {
        let base = path.basename(photo.file);
        // Just copy file
        fs.createReadStream(root('.', photo.file)).pipe(fs.createWriteStream(root(options.destination, base)));
    });

    // Then try the template...

})();

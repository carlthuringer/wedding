exports.config =
  # See http://brunch.io/#documentation for docs.
  files:
    javascripts: joinTo:
      'libraries.js': /^(?!app\/)/
      'app.js': /^app\//
    stylesheets:
      joinTo: 'app.css'
    templates:
      joinTo: 'app.js'
  plugins:
    elmBrunch:
      mainModules: [ 'app/Main.elm' ]
      outputFolder: 'public'
  npm:
    globals:
      jQuery: 'jquery'

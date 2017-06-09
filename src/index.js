require("../tmp/css/main.css");

var Elm = require("./Main");
var app = Elm.Main.embed(document.getElementById("main"), {
  path: window.location.pathname
});

window.onPopState = function(event) {
  app.ports.path.send(window.location.pathname);
};

app.ports.pushPath.subscribe(function(path) {
  window.history.pushState({}, "", path);
  app.ports.path.send(window.location.pathname);
});

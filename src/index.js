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

app.ports.rsvpResizer.subscribe(function(rsvpIframeId) {
  setTimeout(function() {
    iFrameResize(
      {
        autoResize: true,
        heightCalculationMethod: "max",
        enablePublicMethods: true
      },
      rsvpIframeId
    );
  }, 1000);
});

function currentTime() {
  return new Date().valueOf();
}
(function sendTime() {
  app.ports.hostClock.send(currentTime());
  requestAnimationFrame(sendTime);
})();

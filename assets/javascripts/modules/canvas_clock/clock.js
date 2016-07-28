var Drawing = require("./drawing.js")

module.exports = function(canvas) {
  var drawing = new Drawing(canvas);
  var radius = drawing.radius

  var drawClock = function(currentTime) {
    drawFace();
    drawHands(currentTime);
  };

  var drawFace = function() {
    drawing.drawCircle(0, 0, radius, "white")
    for (var num = 1; num < 13; num++) {
      drawing.drawLine(360 / 12 * num , radius, 10, "grey")
    }
    drawing.drawCircle(0, 0, radius * 0.8, "white")
    drawing.drawCircle(0, 0, radius * 0.1, "black")
  };

  var drawHands = function(time) {
    if (time === null) return null;

    drawing.drawLine(time.hours_angle, radius * 0.5, radius * 0.07, "black");
    drawing.drawLine(time.minutes_angle, radius * 0.8, radius * 0.07, "black");
    drawing.drawLine(time.seconds_angle, radius * 0.9, radius * 0.02, "black");
  };

  drawClock(null);

  return {
    update: function(json) {
      drawClock(json);
    }
  }
}

module.exports = function(canvas) {
  var radius = canvas.height / 2;
  var ctx = canvas.getContext("2d");
  ctx.translate(radius, radius);

  return {
    radius: radius,
    drawCircle: function(x, y, r, color) {
      ctx.beginPath();
      ctx.arc(x, y, r, 0, 2 * Math.PI);
      ctx.fillStyle = color;
      ctx.fill();
    },
    drawLine: function(angle, length, width, color) {
      var canvas_angle = angle * Math.PI / 180
      ctx.beginPath();
      ctx.moveTo(0, 0);
      ctx.rotate(canvas_angle);
      ctx.lineTo(0, -length);
      ctx.lineWidth = width;
      ctx.strokeStyle = color;
      ctx.stroke();
      ctx.rotate(-canvas_angle);
    }
  }
};

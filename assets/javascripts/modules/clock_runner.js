var ClockRunner = function(clock, endpoint) {
  var oneSecond = 1000;
  var fetchTime = function() {
    $.get(endpoint, clock.update);
  }

  return {
    once: function() {
      fetchTime();
    },
    run: function() {
      setInterval(fetchTime, oneSecond);
    }
  }
};

module.exports = ClockRunner;

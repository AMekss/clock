var CssClock = function() {
  var hands = ["hours", "minutes", "seconds"];

  var setTime = function(time) {
    for (var j = 0; j < hands.length; j++) {
      var hand = hands[j];
      var $el = $(".clock__" + hand + "-container--initial")
      $el.css("transform", 'rotateZ('+ time[hand+"_angle"] +'deg)')
    }
  };

  return {
    update: function(json) {
      setTime(json);
    }
  }
};

module.exports = CssClock

CssClock = require("./modules/css_clock.js")
ClockRunner = require("./modules/clock_runner.js")

cssClock = new CssClock()
cssClockRunner = new ClockRunner(cssClock, "/analog_time")
cssClockRunner.once()

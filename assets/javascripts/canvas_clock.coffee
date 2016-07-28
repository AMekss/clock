CanvasClock = require("./modules/canvas_clock/clock.js")
ClockRunner = require("./modules/clock_runner.js")

canvasClock = new CanvasClock($(".canvas_clock")[0])
canvasClockRunner = new ClockRunner(canvasClock, "/analog_time")
canvasClockRunner.run()

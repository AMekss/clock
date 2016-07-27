require "./lib/clock"

class AnalogClock
  ONE_HOUR_ANGLE = 30
  ONE_HOUR_MINUTE_ANGLE = 0.5
  ONE_MINUTE_ANGLE = 6
  ONE_SECOND_ANGLE = ONE_MINUTE_ANGLE

  def initialize(clock = Clock.new(mode: "12hour"))
    @clock = clock
  end

  def to_h
    {
      hours_angle: (ONE_HOUR_ANGLE * clock.hours) + (ONE_HOUR_MINUTE_ANGLE * clock.minutes),
      minutes_angle: ONE_MINUTE_ANGLE * clock.minutes,
      seconds_angle: ONE_SECOND_ANGLE * clock.seconds,
    }
  end

  private

  attr_reader :clock
end

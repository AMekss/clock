require "./lib/clock"

class DigitalClock
  def initialize(clock = Clock.new(mode: "24hour"))
    @clock = clock
  end

  def to_h
    {
      hours: clock.hours,
      minutes: clock.minutes,
      seconds: clock.seconds,
    }
  end

  private

  attr_reader :clock
end

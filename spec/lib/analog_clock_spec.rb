require "./lib/analog_clock"

RSpec.describe AnalogClock do
  subject(:digital_clock) { described_class.new(clock_double) }
  let(:clock_double) { double(Clock, hours: 2, minutes: 13, seconds: 59) }

  describe "#to_h" do
    it { expect(digital_clock.to_h).to match(hours_angle: 66.5, minutes_angle: 78, seconds_angle: 354) }
  end
end

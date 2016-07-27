require "./lib/digital_clock"

RSpec.describe DigitalClock do
  subject(:digital_clock) { described_class.new(clock_double) }
  let(:clock_double) { double(Clock, hours: 14, minutes: 13, seconds: 59) }

  describe "#to_h" do
    it { expect(digital_clock.to_h).to match(hours: 14, minutes: 13, seconds: 59) }
  end
end

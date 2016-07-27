require "./lib/clock"

RSpec.describe Clock do
  let(:test_time) { Time.new(2016, 7, 27, 14, 35, 45) }

  before { Timecop.freeze(test_time) }
  after { Timecop.return }

  context "24 hour clock" do
    subject(:clock) { described_class.new(mode: "24hour") }

    it { expect(clock.hours).to eq 14 }
    it { expect(clock.minutes).to eq 35 }
    it { expect(clock.seconds).to eq 45 }
  end

  context "12 hour clock" do
    subject(:clock) { described_class.new(mode: "12hour") }

    it { expect(clock.hours).to eq 2 }
    it { expect(clock.minutes).to eq 35 }
    it { expect(clock.seconds).to eq 45 }
  end

  it "raises error if mode is unsupported" do
    expect { described_class.new(mode: "12hourzzz") }.to raise_error(ArgumentError)
  end
end

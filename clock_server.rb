require "sinatra/base"
require "json"
require "./lib/digital_clock"
require "./lib/analog_clock"

class ClockServer < Sinatra::Base
  DATA_SOURCES = {
    digital_clock: DigitalClock.new,
    analog_clock: AnalogClock.new,
  }.freeze

  get "/digital_time" do
    render_json(:digital_clock)
  end

  get "/analog_time" do
    render_json(:analog_clock)
  end

  private

  def render_json(source_name)
    content_type :json
    JSON.generate(DATA_SOURCES.fetch(source_name).to_h)
  end
end

require "rack/test"
require "committee"
require "./clock_server"

RSpec.describe "ClockServer requests" do
  include Rack::Test::Methods
  include Committee::Test::Methods

  def app
    ClockServer
  end

  def schema_path
      "./docs/schema.json"
  end

  %w{digital_time analog_time}.each do |endpoint|
    describe "/#{endpoint}" do
      before { get "/#{endpoint}" }

      it { expect(last_response).to be_ok }
      it { assert_schema_conform }
    end
  end
end

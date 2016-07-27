class Clock
  KNOWN_MODES = {
    "12hour" => "%l",
    "24hour" => "%k",
  }.freeze

  def initialize(mode:)
    @hours_format = KNOWN_MODES.fetch(mode) do
      raise ArgumentError, "given mode `#{mode}` is not supported. Pleas provide one of #{KNOWN_MODES.keys.inspect}"
    end
  end

  def hours
    current_time.strftime(@hours_format).to_i
  end

  def minutes
    current_time.min
  end

  def seconds
    current_time.sec
  end

  private

  def current_time
    Time.now
  end
end

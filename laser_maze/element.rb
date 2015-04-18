class Element
  attr_accessor :string_symbol, :history

  def initialize(args = {})
    @history = []
  end

  def track_history(current_location)
    @history << current_location
  end

  def to_s
    @string_symbol
  end
end
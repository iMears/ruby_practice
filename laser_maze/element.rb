class Element
  attr_accessor :string_symbol

  def initialize(args = {})
    @history = []
  end

  def track_history(old_location)
    @history << old_location
  end

  def to_s
    @string_symbol
  end
end
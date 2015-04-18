class EmptyElement < Element
  def initialize
    super
    @string_symbol = "-"
  end

  def move_through(input_direction)
    input_direction
  end
end
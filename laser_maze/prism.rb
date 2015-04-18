class PrismWest < Element
  def initialize
    super
    @string_symbol = "<"
  end

  def move_through(input_direction)
    "W"
  end
end

class PrismEast < Element
  def initialize
    super
    @string_symbol = ">"
  end

  def move_through(input_direction)
    "E"
  end
end

class PrismNorth < Element
  def initialize
    super
    @string_symbol = "^"
  end

  def move_through(input_direction)
    "N"
  end
end

class PrismSouth < Element
  def initialize
    super
    @string_symbol = "v"
  end

  def move_through(input_direction)
    "S"
  end
end
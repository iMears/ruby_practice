class North < Element
  def initialize
    super
    @string_symbol = "N"
  end

  def move_through(input_direction)
    "N"
  end
end

class South < Element
  def initialize
    super
    @string_symbol = "S"
  end

  def move_through(input_direction)
    "S"
  end
end

class East < Element
  def initialize
    super
    @string_symbol = "E"
  end

  def move_through(input_direction)
    "E"
  end
end

class West < Element
  def initialize
    super
    @string_symbol = "W"
  end

  def move_through(input_direction)
    "W"
  end
end
class MirrorBackward < Element
  def initialize
    super
    @string_symbol = "\\"
  end

  def move_through(input_direction)
    case input_direction
    when "N"
      return "W"
    when "S"
      return "E"
    when "E"
      return "S"
    when "W"
      return "N"
    end
  end
end

class MirrorForward < Element
  def initialize
    super
    @string_symbol = "/"
  end

  def move_through(input_direction)
    case input_direction
    when "N"
      return "E"
    when "S"
      return "W"
    when "E"
      return "N"
    when "W"
      return "S"
    end
  end
end
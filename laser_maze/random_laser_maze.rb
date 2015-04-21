require_relative 'element'
require_relative 'empty_element'
require_relative 'mirror'
require_relative 'prism'
require_relative 'direction'
require_relative 'string_color'


class Maze
  SYMBOLS = %w(- - - - - - - - - - - - / \\ ^ v > <)
  DIRECTIONS = %w(N S E W)

  def initialize(args = {})
    @width = args[:width].to_i
    @height = args[:height].to_i
    if @width == 0 || @height == 0
      raise "Please enter height and width of grid! Example: \"ruby generate_random_maze.rb 10 20\""
    end
    @laser = nil
    @maze_array = []
    generate_random_maze
    convert_maze
  end

  def fire!
    loop do
      find_current_location
      return puts "Infinite loop!" if infinite_loop
      update_laser_position
      update_laser_direction
      print_maze
      return puts "Out of bounds!" if out_of_bounds
      sleep 0.3
    end
  end

  private

    def generate_random_maze
      @height.times do
        temp_row = []
        @width.times { temp_row << SYMBOLS.sample }
        @maze_array << temp_row
      end
      @maze_array[rand(@height)][rand(@width)] = DIRECTIONS.sample
    end

    def convert_maze
      @maze_array.map!.with_index do |row, y|
        row.map!.with_index do |cell, x|
          case cell
          when "-"
            EmptyElement.new
          when "/"
            MirrorForward.new
          when "\\"
            MirrorBackward.new
          when "^"
            PrismNorth.new
          when "v"
            PrismSouth.new
          when ">"
            PrismEast.new
          when "<"
            PrismWest.new
          when "N"
            convert_start_point(North.new, y, x)
          when "S"
            convert_start_point(South.new, y, x)
          when "E"
            convert_start_point(East.new, y, x)
          when "W"
            convert_start_point(West.new, y, x)
          end
        end
      end
    end

    def convert_start_point(new_object, row, col)
      start_point = new_object
      @laser = [start_point.string_symbol, [row, col]]
      start_point
    end

    def find_current_location
      @current_object = @maze_array[@laser[1][0]][@laser[1][1]]
      unless @current_object == "N" || @current_object == "S" || @current_object == "E" || @current_object == "W"
        if @current_object.string_symbol == "-"
          @current_object.string_symbol = "*".green
        elsif @current_object.string_symbol == "*".green
          @current_object.string_symbol = "*".red
        else
          @current_object.string_symbol = @current_object.string_symbol.green
        end
        @current_location = [@laser[0], [@laser[1][0], @laser[1][1]]]
        @current_object.track_history(@current_location)
      end
    end

    def update_laser_position
      case @laser[0]
      when "N"
        @laser[1][0] -= 1
      when "S"
        @laser[1][0] += 1
      when "E"
        @laser[1][1] += 1
      when "W"
        @laser[1][1] -= 1
      end
    end

    def update_laser_direction
      return if out_of_bounds
      return if infinite_loop

      next_object = @maze_array[@laser[1][0]][@laser[1][1]]
      next_y_x = [@laser[1][0], @laser[1][1]]
      next_direction = next_object.move_through(@laser[0])
      @laser[0] = next_direction
    end

    def out_of_bounds
      if @laser[1][0] < 0 || @laser[1][0] > @height - 1
        return true
      elsif @laser[1][1] < 0 || @laser[1][1] > @width - 1
        return true
      end
      false
    end

    def infinite_loop
      if @current_object.history.length > 1 && @current_object.history.last == @current_object.history.first
        true
      else
        false
      end
    end

    def print_maze
      puts "\n" * 50
      puts "= " * (@width + 2)
      @maze_array.each { |row| puts "| " + row.join(" ") + " |" }
      puts "= " * (@width + 2)
      puts
      puts "Current location: #{@current_location}"
      puts "Next location: #{@laser}"
    end
end

laser_maze = Maze.new(width: ARGV[0], height: ARGV[1])
laser_maze.fire!
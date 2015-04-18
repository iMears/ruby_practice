require_relative 'element'
require_relative 'empty_element'
require_relative 'mirror'
require_relative 'prism'
require_relative 'direction'
require_relative 'string_color'


class Maze
  SYMBOLS = ["-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "-", "/", "\\", "^", "v", ">", "<"]
  DIRECTIONS = ["N", "S", "E", "W"]

  def initialize(args = {})
    @maze_array = []
    @grid_size = args[:grid_size]
    generate_random_maze
    convert_maze
    @laser = find_start_point
    @width = @height = @maze_array.length
  end

  def fire
    puts "\n" * 50
    until out_of_bounds || infinite_loop
      find_current_location
      move_laser
      find_next_location
      print_maze
      return puts "Out of bounds!" if out_of_bounds
      return puts "Infinite loop!" if infinite_loop
      sleep 0.4
      puts "\n" * 50
    end
  end

  private

    def generate_random_maze
      @grid_size.times do
        temp_row = []
        @grid_size.times do
          temp_row << SYMBOLS.sample
        end
        @maze_array << temp_row
      end
      @maze_array[rand(@grid_size)][rand(@grid_size)] = DIRECTIONS.sample
    end

    def convert_maze
      @maze_array.map! do |row|
        row.map! do |cell|
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
            # North.new
            "N"
          when "S"
            # South.new
            "S"
          when "E"
            # East.new
            "E"
          when "W"
            # West.new
            "W"
          end
        end
      end
    end

    def find_start_point
      @maze_array.each_with_index do |row, index|
        if row.find {|i| i == "N" || i == "S" || i == "E" || i == "W"}
          @start_direction = row.find {|i| i == "N" || i == "S" || i == "E" || i == "W"}
          @start_location = [index, row.index(@start_direction)]
        end
      end
      return raise "No starting point!" if @start_location == nil
      puts "Start Location: #{[@start_direction, @start_location]}"
      [@start_direction, @start_location]
    end

    def find_next_location
      return if out_of_bounds
      return if infinite_loop

      next_element = @maze_array[@laser[1][0]][@laser[1][1]]
      next_y_x = [@laser[1][0], @laser[1][1]]
      next_direction = next_element.move_through(@laser[0])
      @laser[0] = next_direction
      puts "Next location: #{[next_direction, next_y_x]}"
    end

    def move_laser
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

    def find_current_location
      current_object = @maze_array[@laser[1][0]][@laser[1][1]]
      unless current_object == "N" || current_object == "S" || current_object == "E" || current_object == "W"
        if current_object.string_symbol == "-"
          current_object.string_symbol = "*".green
        else
          current_object.string_symbol = current_object.string_symbol.green
        end
        old_location = [@laser[0], [@laser[1][0], @laser[1][1]]]
        current_object.track_history(old_location)
        puts "Current location: #{old_location}"
      end
    end

    def out_of_bounds
      if @laser[1][0] < 0 || @laser[1][0] > @height - 1
        return true
      elsif @laser[1][1] < 0 || @laser[1][1] > @width - 1
        return true
      end
      return false
    end

    def infinite_loop
    end

    def print_maze
      puts "= " * (@width + 2)
      @maze_array.each { |row| puts "| " + row.join(" ") + " |" }
      puts "= " * (@width + 2)
      puts
    end
end

laser_maze = Maze.new(grid_size: 20)
laser_maze.fire
require_relative 'maze'


class RandomMaze < Maze
  SYMBOLS = %w(- - - - - - - - - - - - / \\ ^ v > <)
  DIRECTIONS = %w(N S E W)

  def initialize(args = {})
    @width = args[:width].to_i
    @height = args[:height].to_i
    if @width == 0 || @height == 0
      raise "Please enter height and width of grid! Example: \"ruby random_maze.rb 20 10\""
    end
    generate_random_maze
    convert_maze
  end

  private

    def generate_random_maze
      @maze_array = []
      @height.times do
        temp_row = []
        @width.times { temp_row << SYMBOLS.sample }
        @maze_array << temp_row
      end
      @maze_array[rand(@height)][rand(@width)] = DIRECTIONS.sample
    end
end

laser_maze = RandomMaze.new(width: ARGV[0], height: ARGV[1])
laser_maze.fire!
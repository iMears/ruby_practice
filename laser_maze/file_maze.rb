require_relative 'maze'


class FileMaze < Maze
  def initialize(args = {})
    file = File.read(args[:file])
    @maze_array = []
    rows = file.split("\n")
    rows.each do |row|
      @maze_array << row.split("")
    end
    @width = @maze_array[0].length
    @height = @maze_array.length
    if @width == 0 || @height == 0
      raise "Please enter height and width of grid! Example: \"ruby file_maze.rb <file_name.txt>\""
    end
    convert_maze
  end

end


laser_maze = FileMaze.new(file: ARGV[0])
laser_maze.fire!
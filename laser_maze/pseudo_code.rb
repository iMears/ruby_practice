#### PSUEDO CODE ###

# make Maze class
# split input into rows and columns
# make #print_maze method to print to console
# make #find_start_point method
# make #fire method
  # check for out of bounds or loop
    # return "out of bounds" if true
    # return "infinite loop" if true
  # find the element in the direction the laser is going
  # case statement for different options
  # update current laser status
  # if new location element is "-" change to "*" for visual tracking
  # print board
  # do again

# make check for out of bounds or loop method
# make elements class with generic functionality
  # input: current direction
  # output: new direction
  # store the history of all previous directions and locations
  # checks to see that the last on did have the same direction and location (this would be an infinite loop)
# make subclasses of elements with correct functionality for mirrors and prisms
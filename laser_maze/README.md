## Laser Maze

A ray of light enters the grid from some position. It travels through the grid in a straight line trying to escape.
Upon encountering a mirror or prism it changes its course. This continues to happen until it breaks free from the maze, or becomes stuck in an infinite loop.

There are two different versions of this program. The first is a random maze generator that takes the width and height of the grid as input from the command line.
The second program runs a text file that also gets passed in from the command line.

Examples of how to run these programs are as follows:

```
ruby random_maze.rb 30 20
ruby file_maze.rb sample_maze.txt
```
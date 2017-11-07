require_relative 'standard_maze_builder'
require_relative 'counting_maze_builder'

class MazeGame
  def create_maze(builder)
    builder.build_maze
    builder.build_room(1)
    builder.build_room(2)
    builder.build_door(1, 2)

    builder.maze
  end

  def create_complex_maze(builder)
    builder.build_maze
    builder.build_room(1)
    builder.build_room(2)
    builder.build_room(3)
    builder.build_door(1, 2)
    builder.build_door(2, 3)

    builder.maze
  end
end

maze_game = MazeGame.new
standard_maze_builder = StandardMazeBuilder.new
maze = maze_game.create_maze(standard_maze_builder)
puts maze

# The following maze is created with this base design
#  _____   _____
# |     | |     |
# |  1  | |  2  |
# |             |
# |     | |     |
# |_____| |_____|

counting_maze_builder = CountingMazeBuilder.new
maze_game.create_maze(counting_maze_builder)

puts "The maze has #{counting_maze_builder.rooms} rooms and #{counting_maze_builder.doors} doors"

# The following is printed out
# The maze has 2 rooms and 1 doors

complex_maze = maze_game.create_complex_maze(standard_maze_builder)
puts complex_maze

# The following maze is created with this complex maze design
#  _____   _____   _____
# |     | |     | |     |
# |  1  | |  2  | |  3  |
# |                     |
# |     | |     | |     |
# |_____| |_____| |_____|

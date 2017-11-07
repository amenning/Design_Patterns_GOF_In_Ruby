require_relative 'standard_maze_builder'

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

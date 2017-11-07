require_relative 'maze_factory'
require_relative 'enchanted_maze_factory'

class MazeGame
  def create_maze(maze_factory)
    @maze = maze_factory.make_maze
    @room1 = maze_factory.make_room(1)
    @room2 = maze_factory.make_room(2)
    @door = maze_factory.make_door(@room1, @room2)

    @maze.add_room(@room1)
    @maze.add_room(@room2)

    @room1.set_side('North', maze_factory.make_wall)
    @room1.set_side('East', @door)
    @room1.set_side('South', maze_factory.make_wall)
    @room1.set_side('West', maze_factory.make_wall)

    @room2.set_side('North', maze_factory.make_wall)
    @room2.set_side('East', maze_factory.make_wall)
    @room2.set_side('South', maze_factory.make_wall)
    @room2.set_side('West', @door)

    @maze
  end
end

base_game_factory = MazeFactory.new
maze_game = MazeGame.new
maze = maze_game.create_maze(base_game_factory)
puts maze

# The following maze is created with this base design
#  _____   _____
# |     | |     |
# |  1  | |  2  |
# |             |
# |     | |     |
# |_____| |_____|

enchanted_game_factory = EnchantedMazeFactory.new
maze_game = MazeGame.new
maze = maze_game.create_maze(enchanted_game_factory)
puts maze

# The following maze is created with the enchanted maze factory
# _____   _____
#|     | |     |
#|  1  | |  2  |
#|  E       E  |
#|     | |     |
#|_____| |_____|

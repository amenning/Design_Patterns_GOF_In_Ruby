require_relative 'maze'
require_relative 'room'
require_relative 'door'
require_relative 'wall'

class MazeGame
  def create_maze
    @maze = Maze.new
    @room1 = Room.new(1)
    @room2 = Room.new(2)
    @door = Door.new(@room1, @room2)

    @maze.add_room(@room1)
    @maze.add_room(@room2)

    @room1.set_side('North', Wall.new)
    @room1.set_side('East', @door)
    @room1.set_side('South', Wall.new)
    @room1.set_side('West', Wall.new)

    @room2.set_side('North', Wall.new)
    @room2.set_side('East', Wall.new)
    @room2.set_side('South', Wall.new)
    @room2.set_side('West', @door)

    @maze
  end
end

maze_game = MazeGame.new
maze = maze_game.create_maze
puts maze

# The following maze is created with this base design
#  _____   _____
# |     | |     |
# |  1  | |  2  |
# |             |
# |     | |     |
# |_____| |_____|

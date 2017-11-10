require_relative 'maze'
require_relative 'room'
require_relative 'door'
require_relative 'wall'

class MazeGame
  def create_maze
    @maze = make_maze
    @room1 = make_room(1)
    @room2 = make_room(2)
    @door = make_door(@room1, @room2)

    @maze.add_room(@room1)
    @maze.add_room(@room2)

    @room1.set_side('North', make_wall)
    @room1.set_side('East', @door)
    @room1.set_side('South', make_wall)
    @room1.set_side('West', make_wall)

    @room2.set_side('North', make_wall)
    @room2.set_side('East', make_wall)
    @room2.set_side('South', make_wall)
    @room2.set_side('West', @door)

    @maze
  end

  def make_maze
    Maze.new
  end

  def make_room(room_number)
    Room.new(room_number)
  end

  def make_door(room_from, room_to)
    Door.new(room_from, room_to)
  end

  def make_wall
    Wall.new
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

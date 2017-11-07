require_relative 'maze'
require_relative 'wall'
require_relative 'room'
require_relative 'door'

class MazeFactory
  def make_maze
    Maze.new
  end

  def make_wall
    Wall.new
  end

  def make_room(room_number)
    Room.new(room_number)
  end

  def make_door(room1, room2)
    Door.new(room1, room2)
  end
end

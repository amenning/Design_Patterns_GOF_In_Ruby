require_relative 'maze_builder'
require_relative 'maze'
require_relative 'room'
require_relative 'door'
require_relative 'wall'

class StandardMazeBuilder < MazeBuilder
  attr_reader :maze

  def initialize
    @maze
  end

  def build_maze
    @maze = Maze.new
  end

  def build_room(number)
    if @maze.room_number(number).nil?
      room = Room.new(number)
      @maze.add_room(room)

      ['North', 'East', 'South', 'West'].each do |direction|
        room.set_side(direction, Wall.new)
      end
    end
  end

  def build_door(room_number_from, room_number_to)
    room_from = @maze.room_number(room_number_from)
    room_to = @maze.room_number(room_number_to)
    door = Door.new(room_from, room_to)

    room_from.set_side(common_wall(room_from, room_to), door)
    room_to.set_side(common_wall(room_to, room_from), door)
  end
end

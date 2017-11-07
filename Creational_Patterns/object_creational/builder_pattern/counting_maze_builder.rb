require_relative 'maze_builder'
require_relative 'maze'
require_relative 'room'
require_relative 'door'
require_relative 'wall'

class CountingMazeBuilder < MazeBuilder
  attr_reader :maze, :rooms, :doors

  def initialize
    @rooms = 0
    @doors = 0
  end

  def build_room(number)
    @rooms += 1
  end

  def build_door(room_number_from, room_number_to)
    @doors += 1
  end
end

require_relative 'enchanted_maze'
require_relative 'enchanted_room'
require_relative 'door_needing_spell'

class EnchantedMazeFactory < MazeFactory
  def make_maze
    EnchantedMaze.new
  end

  def make_room(room_number)
    EnchantedRoom.new(room_number, cast_spell)
  end

  def make_door(room1, room2)
    DoorNeedingSpell.new(room1, room2)
  end

  private

    def cast_spell
      rand(0...10)
    end
end

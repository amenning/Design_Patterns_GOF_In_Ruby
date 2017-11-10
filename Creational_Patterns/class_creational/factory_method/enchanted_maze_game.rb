require_relative 'maze_game'
require_relative 'enchanted_maze'
require_relative 'enchanted_room'
require_relative 'door_needing_spell'

class EnchantedMazeGame < MazeGame
  def make_maze
    EnchantedMaze.new
  end

  def make_room(room_number)
    EnchantedRoom.new(room_number, cast_spell)
  end

  def make_door(room_from, room_to)
    DoorNeedingSpell.new(room_from, room_to)
  end

  def cast_spell
    rand(0...10)
  end
end

enchanted_maze_game = EnchantedMazeGame.new
maze = enchanted_maze_game.create_maze
puts maze

# The following maze is created with this base design
#  _____   _____
# |     | |     |
# |  1  | |  2  |
# |  E       E  |
# |     | |     |
# |_____| |_____|

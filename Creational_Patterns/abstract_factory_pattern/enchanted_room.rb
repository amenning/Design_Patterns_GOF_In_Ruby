require_relative 'room'

class EnchantedRoom < Room
  attr_reader :spell

  def initialize(room_number, spell = false)
    @sides = {}
    @room_number = room_number
    @spell = spell
  end

  def get_side(direction)
    @sides[direction]
  end

  def set_side(direction, map_site)
    @sides[direction] = map_site
  end
end

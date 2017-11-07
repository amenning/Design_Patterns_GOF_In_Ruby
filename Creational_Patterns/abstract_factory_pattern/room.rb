require_relative 'map_site'

class Room < MapSite
  attr_reader :room_number

  def initialize(room_number)
    @sides = {}
    @room_number = room_number
  end

  def get_side(direction)
    @sides[direction]
  end

  def set_side(direction, map_site)
    @sides[direction] = map_site
  end
end

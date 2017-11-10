require_relative 'door'

class DoorNeedingSpell < Door
  def initialize(room1 = 0, room2 = 0)
    @room1 = room1
    @room2 = room2
    @is_open = false
  end

  def other_side_from_room(room)
    room == @room1 ? @room2 : @room1
  end
end

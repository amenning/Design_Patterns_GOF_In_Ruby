class MazeBuilder
  def build_maze
  end

  def build_room(number)
  end

  def build_door(room_from, room_to)
  end

  def get_maze
  end

  private

    def common_wall(room, joining_room)
      room.room_number < joining_room.room_number ? 'East' : 'West'
    end
end

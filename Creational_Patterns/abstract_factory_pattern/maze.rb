require_relative 'door'

class Maze
  def initialize
    @rooms = {}
  end

  def add_room(room)
    @rooms[room.room_number] = room
  end

  def room_number(number)
    @rooms[number]
  end

  def to_s
    print_north_walls
    print_east_west_walls
    print_south_walls
  end

  private
    def print_north_walls
      print ' '
      @rooms.map do |_room_number, room|
        room.get_side('North').is_a?(Door) ? (print '__ __   ') : (print '_____   ')
      end
      puts ''
    end

    def print_east_west_walls
      print_standard_wall_pairs
      print_standard_wall_pairs_with_room_number
      print_east_west_doors
      print_standard_wall_pairs
    end

    def print_standard_wall_pairs
      @rooms.each { print '|     | ' }
      puts ''
    end

    def print_standard_wall_pairs_with_room_number
      @rooms.map { |room_number, _room| print '|  ' + room_number.to_s + '  | ' }
      puts ''
    end

    def print_east_west_doors
      @rooms.map do |_room_number, room|
        room.get_side('West').is_a?(Door) ? (print '      ') : (print '|     ')
        room.get_side('East').is_a?(Door) ? (print '  ') : (print '| ')
      end
      puts ''
    end

    def print_south_walls
      @rooms.map do |_room_number, room|
        room.get_side('South').is_a?(Door) ? (print '|__ __| ') : (print '|_____| ')
      end
      puts ''
    end
end

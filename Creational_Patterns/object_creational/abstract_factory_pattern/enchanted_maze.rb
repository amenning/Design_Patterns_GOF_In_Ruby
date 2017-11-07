require_relative 'maze'

class EnchantedMaze < Maze

  private

    def print_east_west_doors
      @rooms.map do |_room_number, room|
        room.get_side('West').is_a?(Door) ? (print '   ') : (print '|  ')
        room.spell ? (print 'E  ') : (print '   ')
        room.get_side('East').is_a?(Door) ? (print '  ') : (print '| ')
      end
      puts ''
    end
end

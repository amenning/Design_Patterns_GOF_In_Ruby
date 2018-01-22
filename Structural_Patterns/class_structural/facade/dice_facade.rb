require_relative 'dice.rb'
require_relative 'boarder.rb'
require_relative 'trail.rb'

class DiceFacade
  def initialize(sides)
    @dice = Dice.new(sides)
    @boarder = Boarder.new
    @trail = Trail.new
  end

  def roll
    value = @dice.roll.to_s
    display(value)
  end

  def display(value)
    trail = @trail.length
    print ' ' * trail + @boarder.horizontal_line + "\n"
    print ' ' * trail + @boarder.left_boarder + value + @boarder.right_boarder + "\n"
    print '.' * trail + @boarder.horizontal_line
  end
end

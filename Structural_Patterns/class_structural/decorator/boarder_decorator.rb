require_relative 'dice_decorator.rb'

class BoarderDecorator < DiceDecorator
  def initialize(dice)
    super
  end

  def roll
    horizontal_line
    left_boarder
    @wrapped_dice.roll
    right_boarder
    horizontal_line
  end

  def horizontal_line
    puts '  ' + '---' + '  '
  end

  def left_boarder
    print ' | '
  end

  def right_boarder
    puts ' | '
  end
end

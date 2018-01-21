require_relative 'dice.rb'

class DiceDecorator < Dice
  def initialize(dice)
    @wrapped_dice = dice
  end
end

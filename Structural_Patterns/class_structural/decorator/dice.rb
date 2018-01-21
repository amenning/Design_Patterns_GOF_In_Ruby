class Dice
  def initialize(sides)
    @sides = sides
  end

  def roll
    print rand(1..@sides)
  end
end

require_relative 'character_flyweight.rb'

class CharacterFactory
  def initialize
    @pool = {}
  end

  def get(char)
    @pool[char.to_sym] ||= CharacterFlyweight.new(char)
  end

  def count
    @pool.length
  end
end

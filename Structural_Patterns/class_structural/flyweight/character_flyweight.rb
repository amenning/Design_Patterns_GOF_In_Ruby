class CharacterFlyweight
  def initialize(char)
    puts 'Creating character ' + char
    @char = (char)
  end

  def render(font)
    @char + '(' + font + ')'
  end
end

require_relative 'character_factory.rb'

characters = ('a'..'z').to_a
fonts = ['Arial', 'Times New Roman', 'Helvetica']

factory = CharacterFactory.new
fonts.each do |font|
  characters.each do |char|
    flyweight = factory.get(char)
    print flyweight.render(font) + ' '
  end
  print "\n"
end

puts 'The factory has ' + factory.count.to_s + ' character objects.'

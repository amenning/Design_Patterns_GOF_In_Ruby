require_relative 'image.rb'

class RealImage < Image
  def initialize(filename)
    @filename = filename
    loadFromDisk
  end

  def loadFromDisk
    puts 'Loading ' + @filename + ' image'
  end

  def display
    puts 'Displaying ' + @filename + ' image'
  end
end

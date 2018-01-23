require_relative 'image.rb'
require_relative 'real_image.rb'

class ProxyImage < Image
  def initialize(filename)
    @filename = filename
    @real_image = nil
  end

  def display
    @real_image ||= RealImage.new(@filename)
    @real_image.display
  end
end

require_relative 'shape.rb'
require_relative 'text_view.rb'
require_relative 'text_manipulator.rb'
require_relative 'point.rb'

class TextShape
  include Shape
  include TextView

  def initialize(x = nil, y = nil, width = nil, height = nil)
    @x = x
    @y = y
    @width = width
    @height = height
  end

  def bounding_box(bottom_left = nil, top_right = nil)
    bottom, left = get_origin(bottom, left)
    width, height = get_extent(width, height)

    @bottom_left = Point.new(bottom, left)
    @top_right = Point.new(bottom + height, left + width)
    [@bottom_left, @top_right]
  end

  def create_manipulator
    TextManipulator.new
  end
end

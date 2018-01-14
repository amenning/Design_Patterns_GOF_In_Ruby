require_relative 'shape.rb'
require_relative 'text_manipulator.rb'
require_relative 'point.rb'

class TextShape
  include Shape

  def initialize(text_view)
    @text_view = text_view
  end

  def bounding_box(bottom_left = nil, top_right = nil)
    bottom, left = @text_view.get_origin
    width, height = @text_view.get_extent

    @bottom_left = Point.new(bottom, left)
    @top_right = Point.new(bottom + height, left + width)
    [@bottom_left, @top_right]
  end

  def empty?
    @text_view.empty?
  end

  def create_manipulator
    TextManipulator.new
  end
end

class TextView
  attr_reader :x, :y, :width, :height

  def initialize(x = nil, y = nil, width = nil, height = nil)
    @x = x
    @y = y
    @width = width
    @height = height
  end

  def get_origin(x = nil, y = nil)
    @x = x unless x.nil?
    @y = y unless y.nil?
    [@x, @y]
  end

  def get_extent(width = nil, height = nil)
    @width = width unless width.nil?
    @height = height unless height.nil?
    [@width, @height]
  end

  def empty?
    @x.nil? && @y.nil? && @width.nil? && @height.nil?
  end
end

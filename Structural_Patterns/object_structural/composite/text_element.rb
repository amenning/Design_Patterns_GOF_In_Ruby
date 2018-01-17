require_relative 'render_object.rb'

class TextElement < RenderObject
  def initialize(text)
    @text = text
  end

  def render
    @text
  end
end

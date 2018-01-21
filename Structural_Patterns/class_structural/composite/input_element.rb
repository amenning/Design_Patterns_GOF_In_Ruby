require_relative 'render_object.rb'

class InputElement < RenderObject
  def render
    '<input type="text" />'
  end
end

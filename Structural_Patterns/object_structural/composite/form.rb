require_relative 'render_object.rb'

class Form < RenderObject
  def initialize
    @elements = []
  end

  def render
    form = "<form>\n"
    @elements.each do |element|
      form += element.render + "\n"
    end
    form += "</form>"
  end

  def add_element(element)
    @elements << element
  end
end

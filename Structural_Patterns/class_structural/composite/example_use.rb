require_relative 'form.rb'
require_relative 'input_element.rb'
require_relative 'text_element.rb'

form = Form.new
form.add_element(TextElement.new('Username:'))
form.add_element(InputElement.new)

embeded_form = Form.new
embeded_form.add_element(TextElement.new('Email:'))
embeded_form.add_element(InputElement.new)

form.add_element(embeded_form)

puts form.render

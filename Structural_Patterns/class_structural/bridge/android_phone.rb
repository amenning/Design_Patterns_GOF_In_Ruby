require_relative 'phone.rb'

class AndroidPhone < Phone
  def initialize(output_interface)
    super(output_interface)
  end

  def display
    @output.write("Android Phones Are Awesome!")
  end
end

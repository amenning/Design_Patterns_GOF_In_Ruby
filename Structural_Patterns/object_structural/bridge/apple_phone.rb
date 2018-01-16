require_relative 'phone.rb'

class ApplePhone < Phone
  def initialize(output_interface)
    super(output_interface)
  end

  def display
    @output.write("Apple Phones Are Awesome!")
  end
end

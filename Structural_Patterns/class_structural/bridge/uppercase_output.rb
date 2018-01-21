require_relative 'output_interface.rb'

class UppercaseOutput < OutputInterface
  def write(text)
    puts text.upcase
  end
end

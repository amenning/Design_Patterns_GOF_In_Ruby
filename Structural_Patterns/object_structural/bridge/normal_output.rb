require_relative 'output_interface.rb'

class NormalOutput < OutputInterface
  def write(text)
    puts text
  end
end

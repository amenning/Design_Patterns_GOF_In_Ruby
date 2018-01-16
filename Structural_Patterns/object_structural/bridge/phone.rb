class Phone
  def initialize(output_interface)
    @output = output_interface
  end

  def display
    raise 'Need to override this method'
  end
end

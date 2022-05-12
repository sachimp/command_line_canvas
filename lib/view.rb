class View
  def list_options
    options = [
    "? - see all options",
    "S - show canvas",
    "X - terminate session",
    "C - clear canvas (set all pixels to white)"]
    options.map do |option|
      puts option
    end
  end
end

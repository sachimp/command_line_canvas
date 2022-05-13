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

  def invalid(message)
    puts "Invalid. #{message}"
  end

  def message_user(message)
    puts "#{message}"
  end

  def show_canvas(height, width)
    width = ("O" * width).chars
    height = height
    canvas = [width] * height
    canvas.each do |row|
      puts row.join
    end
  end
end

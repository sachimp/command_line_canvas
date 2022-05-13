class View

  def ask_for_next_action
    puts "What would you like to do? (type '?' for all options)"
    command = gets.chomp.upcase
    return command
  end

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

class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    puts 'Welcome to Sachin Painter (tm)'
    puts ''

    while @running
      display_message
      action = gets.chomp.upcase
      print `clear`
      route_action(action)
    end
  end

  private

  def route_action(action)
    # abandoned 'case when', could not make cases for start_with?

    if action == "?"
      @controller.help
    elsif action == "X"
      stop
    elsif action.start_with?("I")
      @controller.create(action)
    else
      puts "Sorry I didn't understand the command. Please try again."
    end
  end

  def stop
    puts "Goodbye"
    @running = false
  end

  def display_message
    puts ""
    puts "What would you like to do next? (type ? to see all options)"
  end
end

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
      print 'clear'
      route_action(action)
    end
  end

  private

  def route_action(action)
    case action
    when "?" then @controller.help
    when "X" then stop
    end
  end

  def stop
    @running = false
  end

  def display_message
    puts ""
    puts "What would you like to do next? (type ? to see all options)"
  end
end

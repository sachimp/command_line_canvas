require_relative "view"
require_relative "canvas"

class Controller
  def initialize(view)
    @view = view
  end

  def help
    @view.list_options
  end

  def create(action)
    command = action.split
    return @view.invalid("Use format I M N where M = height and N = width.") if command.count != 3
    puts "HI"
  end
end

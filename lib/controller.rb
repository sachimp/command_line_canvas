require_relative "view"
require_relative "canvas"

class Controller
  attr_accessor :canvas

  def initialize(view)
    @view = view
    @canvas = Canvas.new(0, 0)
  end

  def help
    @view.list_options
  end

  def create(action)
    command = action.split
    return @view.invalid("Use format I M N where M = height and N = width.") if command.count != 3
    @canvas.height = command[1]
    @canvas.width = command[2]
    p @canvas
  end
end

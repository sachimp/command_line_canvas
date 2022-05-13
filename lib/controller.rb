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
    return @view.invalid("Use format I M N where M = height and N = width.") if command.count != 3 || command[1].to_i == 0 || command[2].to_i == 0
    @canvas.height = command[1]
    @canvas.width = command[2]
    @view.message_user("canvas created: #{@canvas.height} height, #{@canvas.width} width")
  end

  def color_one_pixel(action)
    command = action.split
    p command
  end

  def display_canvas
    height = @canvas.height
    width = @canvas.width
    @view.show_canvas(height.to_i, width.to_i)
  end
end

require_relative "view"
require_relative "canvas"

class Controller
  attr_accessor :canvas

  def initialize(view)
    @view = view
    @canvas = Canvas.new
  end

  def help
    @view.list_options
  end

  def create(action)
    command = action.split
    return @view.invalid("Use format I M N where M = height and N = width.") if command.count != 3 || command[1].to_i == 0 || command[2].to_i == 0
    @canvas.height = command[1]
    @canvas.width = command[2]
    p @canvas.build
    @view.message_user("canvas created: #{@canvas.height} height, #{@canvas.width} width")
  end

  def color_one_pixel(action)
    command = action.split
    p command
  end

  def display_canvas
    # @canvas.build
    # p @canvas
  end
end

test = Controller.new(View.new)
p test.canvas

test.canvas.height = 2
test.canvas.width = 5
p test.canvas.canvas
p test.canvas.build

p test.canvas

p test.canvas.build

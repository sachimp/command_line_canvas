require_relative "view"
require_relative "canvas"

class Controller
  def initialize(view)
    @view = view
    @canvas = Canvas.new(0, 0)
  end

  def route(action)

  end

  def help
    @view.list_options
  end

  def create
    puts "create"
  end

  def display_canvas

  end
end

require_relative "view"
require_relative "canvas"

class Controller
  def initialize
    @view = View.new
  end

  def help
    @view.list_options
  end
end

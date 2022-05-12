require_relative "view"
require_relative "canvas"

class Controller
  def initialize(view)
    @view = view
  end

  def help
    @view.list_options
  end
end

require_relative 'lib/controller'
require_relative 'router'

view = View.new
canvas = Canvas.new
controller = Controller.new(view, canvas)
router = Router.new(controller)

router.run

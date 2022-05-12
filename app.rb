require_relative 'lib/controller'
require_relative 'router'

view = View.new
controller = Controller.new(view)
router = Router.new(controller)

router.run

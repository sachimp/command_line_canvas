require_relative '../lib/controller'

describe Controller do

  describe '#initialize' do
    context "being initialized" do
      it 'stores a new view as an instance variable' do
        view = View.new
        canvas = Canvas.new(height, width)
        controller = Controller.new(view, canvas)
        expect(controller.instance_variable_get(:@view)).to be_instance_of(View)
        expect(controller.instance_variable_get(:@canvas)).to be_instance_of(Canvas)
      end
    end
  end

end

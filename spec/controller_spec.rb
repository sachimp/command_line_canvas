require_relative '../lib/controller'

describe Controller do

  describe '#initialize' do
    context "being initialized" do
      it 'stores a new view as an instance variable' do
        view = View.new
        controller = Controller.new(view)
        expect(controller.instance_variable_get(:@view)).to be_instance_of(View)
      end
    end
  end

end

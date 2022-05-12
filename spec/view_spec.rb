require_relative '../lib/view'

describe View do

  describe "#list_options" do
    it 'outputs something (not nil)' do
      view = View.new
      expect(view.list_options).to be_truthy
    end
  end

end

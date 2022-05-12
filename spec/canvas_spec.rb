require_relative '../lib/canvas'

describe Canvas do

  describe "#initialize" do
    it "given a height and width in pixels" do
      canvas = Canvas.new(8, 5)
      expect(canvas.height).to be(8)
      expect(canvas.width).to eq(%w(O O O O O))
    end
  end

end

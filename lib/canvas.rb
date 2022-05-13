class Canvas
  attr_accessor :height, :width

  def initialize(height, width)
    @height = height
    @width = ("O" * width).chars
  end

  def build
    [@width] * @height
  end

end

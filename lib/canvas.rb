class Canvas
  attr_accessor :height, :width

  def initialize(height, width)
    @height = height
    @width = ("O" * width).chars
    @canvas = build_canvas(@height, @width)
  end

  private

  def build_canvas(height, width)
    [width] * height
  end
end

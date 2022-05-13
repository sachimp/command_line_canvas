class Canvas
  attr_accessor :height, :width

  def initialize(height, width)
    @height = height
    @width = width
    # @width = ("O" * width).chars
  end

end

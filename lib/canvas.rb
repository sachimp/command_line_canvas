require_relative 'view'
require_relative '../router'

class Canvas
  attr_accessor :height, :width, :canvas

  def initialize(height = 0, width = 0)
    @height = height
    @width = ("O" * width).chars
    @canvas = [@width] * @height
    @view = View.new
  end

  def build
    @canvas.each do |row|
      puts row.join
    end
  end
end

test = Canvas.new(3, 9)

puts "default"
# default blank
test.build
puts ''

puts "colour a column"
# colour a column
test.canvas.map do |row|
  row[2] = "c"
end
test.build
puts ''

puts "colour a row"
# colour a row
test.canvas[1] = ("r" * test.width.count).chars
test.build
puts ''

puts "colour one pixel"
# colour one pixel
test.canvas[1][3] = "p"
test.build
puts ''

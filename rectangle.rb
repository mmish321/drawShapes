require_relative "shape"
class Rectangle

	attr_accessor :x, :y, :width, :length, :color , :zorder
	def initialize(x, y, width, length)
		@x = x
		@y = y
		@width = width
		@length = length
		@color = Gosu::Color.new(0xff_000000)
		@color.red = rand(256 - 40) + 40
		@color.green = rand(256 - 40) + 40
		@color.blue = rand(256 - 40) + 40
		@zorder = 1
	end

	def draw_shape
		Gosu.draw_line(x, y, color, x + width, y, color, zorder)
		Gosu.draw_line(x + width, y, color, x + width, y + length, color, zorder)
		Gosu.draw_line(x + width, y + length, color, x, y + length, color, zorder)
		Gosu.draw_line(x, y + length, color, x, y, color, zorder)

		for i in 0...width
			Gosu.draw_line(x + i, y + length, color, x + i, y, color, zorder)
		end
	end

end
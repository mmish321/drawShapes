require_relative "shape"
class Square

	attr_accessor :x, :y, :width, :length, :color , :zorder
	def initialize(x, y, width)
		@x = x
		@y = y
		@width = width
		@color = Gosu::Color.new(0xff_000000)
		@color.red = rand(256 - 40) + 40
		@color.green = rand(256 - 40) + 40
		@color.blue = rand(256 - 40) + 40
		@zorder = 1
	end

	def draw_sqr
		Gosu.draw_line(x, y, color, x + width, y, color, zorder)
		Gosu.draw_line(x + width, y, color, x + width, y + width, color, zorder)
		Gosu.draw_line(x + width, y + width, color, x, y + width, color, zorder)
		Gosu.draw_line(x, y + width, color, x, y, color, zorder)

		for i in 0...width
			Gosu.draw_line(x + i, y + width, color, x + i, y, color, zorder)
		end
	end

end
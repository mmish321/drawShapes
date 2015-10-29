require_relative "shape"
class Triangle

	attr_accessor :x, :y, :width, :length, :color , :zorder, :height
	attr_reader :height
	def initialize(x, y, width)
		@x = x
		@y = y
		@width = width
		@color = Gosu::Color.new(0xff_000000)
		@color.red = rand(256 - 40) + 40
		@color.green = rand(256 - 40) + 40
		@color.blue = rand(256 - 40) + 40
		@zorder = 1
		@height = (Math.sqrt(3)*width)/2
	end

	def draw_shape
		Gosu.draw_line(x, y, color, x + width, y, color, zorder)
		Gosu.draw_line(x + (width/2.0), y-((width/2.0) * Math.sqrt(3)), color, x+width, y, color, zorder)
		Gosu.draw_line(x, y , color, x + (width/2.0), y - ((width/2.0) * Math.sqrt(3)), color, zorder)
		for i in 0...width/2
			Gosu.draw_line(x+i, y, color, x+i, y-(Math.sqrt(3)* i), color, zorder)
		end
		for i in (width/2)...width
			Gosu.draw_line(x + i, y - height + (Math.sqrt(3) * (i - width/2)), color, x + i , y, color, zorder)
		end
	end
	

end
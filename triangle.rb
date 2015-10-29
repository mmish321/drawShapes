require_relative "shape"
class Triangle

	attr_accessor :x, :y, :width, :length, :color , :zorder
	def initialize(x, y, width, length)
		@x = x
		@y = y
		@width = width
		@length = length
		@color = Gosu::Color.argb(0xff_ff0000)
		@zorder = 1
	end

	def draw_shape
		Gosu.draw_line(x, y, color, x + width, y, color, zorder)
		 Gosu.draw_line(x + (width/2.0), y-((width/2.0) * Math.sqrt(3)), color, x+width, y, color, zorder)
		Gosu.draw_line(x, y , color, x + (width/2.0), y - ((width/2.0) * Math.sqrt(3)), color, zorder)

			for i in 0...width
		 	Gosu.draw_line(x+ i , y, color, (width - i) , y , color, zorder)
		 end
	end
	

end
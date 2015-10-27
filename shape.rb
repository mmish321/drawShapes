class Shape
	attr_accessor :x, :y, :width, :length, :color
	def initialize(x, y, width, length , color)
		@x = x
		@y = y
		@width = width
		@length = length
		@color = Gosu::Color.new(0xff_000000)
	end

	def draw_shape
		Gosu.draw_line(x,y,color,x+width,y,color, z= 0, mode= :default)
		Gosu.draw_line(x,y,color,x+length,y+length,color, z= 0, mode= :default)
		Gosu.draw_line(x+length,y+length,color,x+width,y+width,color, z= 0, mode= :default)
		Gosu.draw_line(x,y,color,x+width,y,color, z= 0, mode= :default)








	end







end
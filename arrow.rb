require_relative "rectangle"
require_relative "triangle"
class Arrow
	attr_accessor 
	def initialize(x,y, width, length)
		@triangle = Triangle.new(x,y,width)
		@rectangle = Rectangle.new(x+20 , y-(length- @triangle.height),width- 40,(length- @triangle.height)  )
		
	end


	def draw_arrow
		
		@triangle.draw_tri
		@rectangle.draw_rec


	end









end
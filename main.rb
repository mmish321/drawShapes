require "gosu"
require_relative "shape"
require_relative "rectangle"
require_relative "triangle"
require_relative "square"
require_relative "arrow"
 
class GameWindow < Gosu::Window

	def initialize
		super 640, 480
		self.caption = "Draw Stuff"
		@rectangle = Array.new
		@triangle = Array.new
		@square = Array.new
		@arrow = Array.new
	end




	def draw
		# if rand(300) then
		# 	@rectangle.push(Rectangle.new(rand(640), rand(480),rand(200), rand(200)))
		# end
		# if rand(300)  then
		# 	@triangle.push(Triangle.new(rand(640), rand(480), rand(200)))
		# end
		# if rand(300) then
		# 	@square.push(Square.new(rand(640), rand(480), rand(200)))
		# end
		if rand(2) then
			@arrow.push(Arrow.new(rand(640), rand(480), rand(200),rand(300)))
		end
		# @rectangle.each {|rect| rect.draw_rec}
		# @triangle.each{|tri| tri.draw_tri}
		# @square.each{|sqr| sqr.draw_sqr}
		@arrow.each{|arr| arr.draw_arrow}
	end




end
window = GameWindow.new
window.show
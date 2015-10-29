require "gosu"
require_relative "shape"
require_relative "rectangle"
require_relative "triangle"
 
class GameWindow < Gosu::Window

	def initialize
		super 640, 480
		self.caption = "Draw Stuff"
		@rectangle = Array.new
		@triangle = Array.new
		
	end




	def draw
		if rand(300s) then
			@rectangle.push(Rectangle.new(rand(640), rand(480),rand(200), rand(200)))
		end
		if rand(300)  then
			@triangle.push(Triangle.new(rand(640), rand(480), rand(200)))
		end
		@rectangle.each {|rect| rect.draw_shape}
		@triangle.each{|tri| tri.draw_shape}
	end




end
window = GameWindow.new
window.show
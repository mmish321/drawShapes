require "gosu"
require_relative "shape"
require_relative "rectangle"
require_relative "triangle"
 
class GameWindow < Gosu::Window

	def initialize
		super 640, 480
		self.caption = "Draw Stuff"
		
	end




	def draw
		# rec = Rectangle.new(90,180,100,100)
		# rec.draw_shape
		trig = Triangle.new(90,180,100,100)
		trig.draw_shape
	end




end
window = GameWindow.new
window.show
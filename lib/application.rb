require_relative './application/line'
require_relative './application/rectangle'
require_relative './application/button'
require_relative './application/canvas'
require 'java'

class Application

  def initialize
    puts "Hello from Application"
    canvas = Canvas.new
    # line1 = Line.new(Color.pink,0,0,100,100)
    # line2 = Line.new(Color.blue,200,400,300,500)
    # rectangle1 = Rectangle.new(Color.red,0,0,200,400)
    # rectangle2 = Rectangle.new(Color.yellow,100,100,200,400)
    # canvas.add(line1)
    # canvas.add(line2)
    # canvas.add(rectangle1)
    # canvas.add(rectangle2)
    button = Button.new("Button 1",Color.red,200,200,400,400)
    canvas.add(button)
  end
end


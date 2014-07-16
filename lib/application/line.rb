#renders a line
require 'java'
import java.awt.Color
class Line
  def initialize color, x1, y1, x2, y2
    @color = color
    @x1 = x1
    @y1 = y1
    @x2 = x2
    @y2 = y2

  end

  def render graphics
    graphics.setColor(@color)
    graphics.drawLine(@x1,@y1,@x2,@y2)
  end

end
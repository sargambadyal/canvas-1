#render a rectangle
class Rectangle
  attr_reader :color, :x1, :y1, :width, :height

  def initialize color, x1, y1, width, height

    @color = color
    @x1 = x1
    @y1 = y1
    @width = width
    @height = height
  end

  def lines
    [Line.new(@color, @x1, @y1, @x1+@width, @y1),
     Line.new(@color, @x1+@width, @y1, @x1+@width, @y1+@height),
     Line.new(@color, @x1+@width, @y1+@height, @x1, @y1+@height),
     Line.new(@color, @x1, @y1+@height, @x1, @y1)]
  end

  def render graphics
    lines.each do |line|
      line.render(graphics)
    end
  end
end
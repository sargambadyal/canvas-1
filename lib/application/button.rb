#Creates a responding button
class Button < Rectangle
attr_reader :text

  def initialize(text,color,x,y,width,height)
   super color,x,y,width,height
    @text=text
  end

  def render(graphics)
    super(graphics)
    graphics.drawString(@text, @x1 + @width / 2,@y1 + @height / 2)
  end

  def clicked?(javaEvent)
    if( javaEvent.getX>@x1 && javaEvent.getX < @x1+@width && @y1-20<javaEvent.getY && javaEvent.getY < @y1+@height-20 )
      Kernel.puts @text
    end
    end
end
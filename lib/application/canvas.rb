#drawing the building blocks of GUI components
require 'java'
import java.awt.Color

puts "#{RUBY_PLATFORM}"
class Canvas < javax.swing.JPanel
attr_reader :frame
  def initialize
    super
    @frame = javax.swing.JFrame.new("Canvas")
    @frame.setDefaultCloseOperation(javax.swing.JFrame::EXIT_ON_CLOSE)
    @frame.setSize(800, 600)
    @frame.setVisible(true)
    @frame.add(self)
    @frame.validate
    @frame.repaint

    @state = []
  end

  def add line
    @state << line
  end

  def paint
    @frame.repaint
  end

  def paintComponent(graphics)
    super(graphics)
    render(graphics)
  end

  def render(graphics)

    @state.each do |line|
    line.render (graphics)
    end
    #graphics.setColor(Color.red)
    #graphics.drawLine(0,0,100,100)
    #graphics.fillOval(200, 200, 100, 200)
    #graphics.drawRoundRect(100, 100, 200, 400, 10, 10)
  end
end




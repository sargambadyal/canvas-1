#drawing the building blocks of GUI components
require 'java'
import java.awt.Color

puts "#{RUBY_PLATFORM}"
class Canvas < javax.swing.JPanel
attr_reader :frame
  def initialize
  @state = []
    super
    @frame = javax.swing.JFrame.new("Canvas")
    @frame.setDefaultCloseOperation(javax.swing.JFrame::EXIT_ON_CLOSE)
    @frame.setSize(800, 600)
    @frame.setVisible(true)
    @frame.add(self)
    @frame.validate
    paint


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
    
  end
end




#drawing the building blocks of GUI components
require 'java'
import java.awt.Color


puts "#{RUBY_PLATFORM}"
class Canvas < javax.swing.JPanel

  include java.awt.event.MouseListener
  include java.awt.event.KeyListener

attr_reader :frame,:building_blocks
  def initialize
    super
    @building_blocks = []
    @frame = javax.swing.JFrame.new("Canvas")
    @frame.setDefaultCloseOperation(javax.swing.JFrame::EXIT_ON_CLOSE)
    @frame.setSize(800, 600)
    @frame.setVisible(true)
    @frame.addMouseListener(self)
    @frame.add(self)
    @frame.validate
    @frame.repaint
  end

  def add building_block
    @building_blocks << building_block
    @frame.validate
    @frame.repaint
  end

  def paintComponent(graphics)
    super(graphics)
    render(graphics)
  end

  def render(graphics)
    @building_blocks.each do |building_block|
      building_block.render (graphics)
    end
  end


  def keyPressed(javaEvent);end
  def keyReleased(javaEvent);end
  def mouseEntered(javaEvent);end
  def mouseExited(javaEvent);end
  def mousePressed(javaEvent);end
  def mouseReleased(javaEvent);end

  def mouseClicked(javaEvent)

    building_blocks.each do |building_block|
      building_block.clicked?(javaEvent)
    end

  end

end




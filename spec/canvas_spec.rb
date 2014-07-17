require 'spec_helper'

describe 'Canvas' do
  let(:canvas) {
    Canvas.new()
  }
  let (:line1) {
    Line.new(Color.red, 0, 0, 100, 100)
  }

  let (:line2) {
    Line.new(Color.blue, 200, 200, 400, 400)
  }

  it 'it add a line the canvas' do
    frame = double("Frame")
    allow(frame).to receive(:setDefaultCloseOperation).with(javax.swing.JFrame::EXIT_ON_CLOSE)
    allow(frame).to receive(:setSize).with(800, 600)
    allow(frame).to receive(:setVisible).with(true)
    allow(frame).to receive(:add).with(any_args)
    allow(frame).to receive(:addMouseListener)
    allow(frame).to receive(:validate)
    allow(frame).to receive(:repaint)
    allow(javax.swing.JFrame).to receive(:new).and_return(frame)
    canvas.add(line1)
    expect(canvas.building_blocks).to eq([line1])
  end

  it 'paints a line on canvas ' do
    frame = double("Frame")
    allow(frame).to receive(:setDefaultCloseOperation).with(javax.swing.JFrame::EXIT_ON_CLOSE)
    allow(frame).to receive(:setSize).with(800, 600)
    allow(frame).to receive(:setVisible).with(true)
    allow(frame).to receive(:addMouseListener)
    allow(frame).to receive(:add).with(any_args)
    allow(frame).to receive(:validate)
    allow(frame).to receive(:repaint)
    allow(javax.swing.JFrame).to receive(:new).and_return(frame)

    graphics = double("graphics")
    canvas.add(line1)
    allow(graphics).to receive(:setColor).with(Color.red)
    expect(graphics).to receive(:drawLine).with(0, 0, 100, 100)
    canvas.render(graphics)
  end

  it 'paints a line on canvas ' do
    frame = double("Frame")
    allow(frame).to receive(:setDefaultCloseOperation).with(javax.swing.JFrame::EXIT_ON_CLOSE)
    allow(frame).to receive(:setSize).with(800, 600)
    allow(frame).to receive(:setVisible).with(true)
    allow(frame).to receive(:addMouseListener)
    allow(frame).to receive(:add).with(any_args)
    allow(frame).to receive(:validate)
    allow(frame).to receive(:repaint)
    allow(javax.swing.JFrame).to receive(:new).and_return(frame)

    graphics = double("graphics")
    canvas.add(line1)
    canvas.add(line2)
    expect(graphics).to receive(:setColor).with(Color.red)
    expect(graphics).to receive(:drawLine).with(0, 0, 100, 100)
    expect(graphics).to receive(:setColor).with(Color.blue)
    expect(graphics).to receive(:drawLine).with(200, 200, 400, 400)
    canvas.render(graphics)
  end

  it "initializes a canvas with frame" do
    frame = double("Frame")
    expect(frame).to receive(:setDefaultCloseOperation).with(javax.swing.JFrame::EXIT_ON_CLOSE)
    expect(frame).to receive(:setSize).with(800, 600)
    expect(frame).to receive(:setVisible).with(true)
    expect(frame).to receive(:addMouseListener).with(any_args)
    expect(frame).to receive(:add).with(any_args)
    expect(frame).to receive(:validate)
    expect(frame).to receive(:repaint)
    expect(javax.swing.JFrame).to receive(:new).and_return(frame)

    Canvas.new
  end

  it "should indicate Button clicked or not " do
    frame = double("Frame")
    allow(frame).to receive(:setDefaultCloseOperation).with(javax.swing.JFrame::EXIT_ON_CLOSE)
    allow(frame).to receive(:setSize).with(800, 600)
    allow(frame).to receive(:setVisible).with(true)
    allow(frame).to receive(:addMouseListener)
    allow(frame).to receive(:add).with(any_args)
    allow(frame).to receive(:validate)
    allow(frame).to receive(:repaint)
    allow(javax.swing.JFrame).to receive(:new).and_return(frame)


    button1 = Button.new("Button 1",Color.red,100,100,50,50)
    canvas.add(button1)
    javaEvent = double("javaEvent")
    allow(javaEvent).to receive(:getX).and_return(120)
    allow(javaEvent).to receive(:getY).and_return(120)
    expect(Kernel).to receive(:puts).with(button1.text)
    canvas.mouseClicked(javaEvent)


  end
end

require 'spec_helper'

describe 'Canvas' do
  let(:canvas) {
    Canvas.new()
  }
  let (:line1){
    Line.new(Color.red,0,0,100,100)
  }

  let (:line2){
    Line.new(Color.blue,200,200,400,400)
  }

  it 'it add a line the canvas' do
    expect(canvas.add(line1)).to eq([line1])
  end

  it 'repaints the canvas ' do
    expect(canvas.frame).to receive(:repaint)
    canvas.paint
  end

  it 'paints a line on canvas ' do
    graphics = double("graphics")
    canvas.add(line1)
    allow(graphics).to receive(:setColor).with(Color.red)
    expect(graphics).to receive(:drawLine).with(0,0,100,100)
    canvas.render(graphics)
  end

  it 'paints a line on canvas ' do
    graphics = double("graphics")
    canvas.add(line1)
    canvas.add(line2)
    expect(graphics).to receive(:setColor).with(Color.red)
    expect(graphics).to receive(:drawLine).with(0,0,100,100)
    expect(graphics).to receive(:setColor).with(Color.blue)
    expect(graphics).to receive(:drawLine).with(200,200,400,400)
    canvas.render(graphics)
  end
end

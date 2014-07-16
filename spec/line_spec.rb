require 'spec_helper'

describe 'Line' do

  it 'paints a line on canvas ' do
    graphics = double("graphics")
    line = Line.new(Color.red,0,0,100,100)
    allow(graphics).to receive(:setColor).with(Color.red)
    expect(graphics).to receive(:drawLine).with(0,0,100,100)
    line.render(graphics)
  end
end
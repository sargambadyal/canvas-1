require 'spec_helper'

describe 'Rectangle' do
  it 'paints a Rectangle on canvas ' do
    graphics = double("graphics")
    rectangle = Rectangle.new(Color.red,0,0,200,400)
    expect(graphics).to receive(:setColor).with(any_args).exactly(4).times
    expect(graphics).to receive(:drawLine).with(0,0,200,0)
    expect(graphics).to receive(:drawLine).with(200,0,200,400)
    expect(graphics).to receive(:drawLine).with(200,400,0,400)
    expect(graphics).to receive(:drawLine).with(0,400,0,0)
    rectangle.render(graphics)
  end
end
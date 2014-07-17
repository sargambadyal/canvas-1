require 'spec_helper'

describe Button do

  it 'should create a rectangular button with given data' do
    graphics = double("graphics")
    button = Button.new("Click Me",Color.red,100,100,50,50)
    expect(graphics).to receive(:setColor).with(any_args).exactly(4).times
    expect(graphics).to receive(:drawLine).with(100,100,150,100)
    expect(graphics).to receive(:drawLine).with(150,100,150,150)
    expect(graphics).to receive(:drawLine).with(150,150,100,150)
    expect(graphics).to receive(:drawLine).with(100,150,100,100)
    expect(graphics).to receive(:drawString).with(any_args)
    button.render(graphics)
  end
  it 'prints button text on click' do

    javaEvent=double("javaEvent")

    button = Button.new("Button 1",Color.red,100,100,50,50)
    allow(javaEvent).to receive(:getX).and_return(120)
    allow(javaEvent).to receive(:getY).and_return(120)
    expect(Kernel).to receive(:puts).with("Button 1")
    button.clicked?(javaEvent)


  end
end

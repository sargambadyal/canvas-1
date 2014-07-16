require_relative './application/line'
require_relative './application/canvas'
require 'java'



class Application

  def initialize
    puts "Hello from Application"
    canvas = Canvas.new
  end
end


require 'rack'

class HelloRack
  def call(env)
    ['200', {'Content-Type' => 'text/html'}, ["Hello Rack!"]]
  end
end

Rack::Handler::WEBrick.run HelloRack.new, :Port => 9898

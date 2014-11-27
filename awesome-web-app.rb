require 'rack'
require 'json'

class HelloRack
  def call(env)
    ['200', {'Content-Type' => 'application/json'}, [env.to_json]]
  end
end

Rack::Handler::WEBrick.run HelloRack.new, :Port => 9898

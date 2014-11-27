require 'rack'
require 'json'

class HelloRack
  def call(env)
    req =  Rack::Request.new(env)
    if(req.path == "/tw")
      ['200', {'Content-Type' => 'application/json'}, ['hello twers!']]
    else
      ['200', {'Content-Type' => 'application/json'}, [env.to_json]]
    end
  end
end

Rack::Handler::WEBrick.run HelloRack.new, :Port => 9898

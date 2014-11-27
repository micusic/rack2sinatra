require 'rack'
require 'json'

class HelloRack
  def call(env)
    if(env["PATH_INFO"] == "/tw")
      ['200', {'Content-Type' => 'application/json'}, ['hello twers!']]
    else
      ['200', {'Content-Type' => 'application/json'}, [env.to_json]]
    end
  end
end

Rack::Handler::WEBrick.run HelloRack.new, :Port => 9898

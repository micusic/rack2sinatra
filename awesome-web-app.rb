require 'rack'
require 'json'

class HelloRack
  def call(env)
    req =  Rack::Request.new(env)
    if(req.post?)
      ['200', {'Content-Type' => 'application/json'}, ["You just posted with name - #{req.POST["name"]}!"]]
    else
      if(req.path == "/tw")
        ['200', {'Content-Type' => 'application/json'}, ["hello #{req.params["name"]}!"]]
      elsif(req.path == '/file')
        ['200', {'Content-Type' => 'application/json'}, [File.read('public/file')]]
      else
        ['200', {'Content-Type' => 'application/json'}, [env.to_json]]
      end
    end
  end
end

Rack::Handler::WEBrick.run HelloRack.new, :Port => 9898

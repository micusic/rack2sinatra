require 'json'

use Rack::Static, :urls => ["/public"]

map '/' do
  run Proc.new { |env| ['200', {'Content-Type' => 'application/json'}, [env.to_json]]}
end

map '/tw' do
  proc = Proc.new do |env|
    req =  Rack::Request.new(env)
    ['200', {'Content-Type' => 'application/json'}, ["hello #{req.params["name"]}!"]]
  end
  run proc
end

#\ -p 9898

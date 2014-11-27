require 'rack'

Rack::Handler::WEBrick.run Proc.new {|env| ['200', {'Content-Type' => 'text/html'}, ["Hello Rack!"]]}, :Port => 9898

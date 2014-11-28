require 'sinatra'

get '/tw' do
  "Hello " + params[:name] || "TWer"
end

get '/*' do
  'Hello human!'
end
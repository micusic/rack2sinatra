require 'sinatra'
require 'json'

get '/tw' do
  "Hello " + params[:name] || "TWer"
end

post '/tw' do
  (params[:name] || "TWer") + " posted"
end

get '/*' do
  request.env.to_json
end
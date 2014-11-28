require 'sinatra'

get '/tw' do
  "Hello " + params[:name] || "TWer"
end

post '/tw' do
  (params[:name] || "TWer") + " posted"
end

get '/*' do
  'Hello human!'
end
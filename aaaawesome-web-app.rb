require 'sinatra'

get '/tw' do
  'Hello TWer!'
end

get '/*' do
  'Hello human!'
end
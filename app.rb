require 'sinatra'
# In our case, app.rb will be for routing (or controlling) concerns, and we will use another file for our presentation (or view) concerns.

set :session_secret, 'super secret'

get '/' do
  "Hello!"
end

get '/secret' do
  "This is a secret page"
end

get '/home' do
  "This is a home page"
end

get '/cat' do
  erb(:index)
end

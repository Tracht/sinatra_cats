require 'sinatra'
# In our case, app.rb will be for routing (or controlling) concerns, and we will use another file for our presentation (or view) concerns.

set :session_secret, 'super secret'

get '/' do
  "Hello!"
end

get '/secret' do
"Not secret"
end

get '/home' do
  "This is a home page"
end

get '/random-cat' do
  @names = ["Amigo", "Oscar", "Viking"].sample
  # %w(Amigo Oscar Viking) could use this to refactor
  erb(:index)
end

get '/named-cat' do
  @names = params[:name]
  p params
  erb(:index)
end

require 'sinatra'
# In our case, app.rb will be for routing (or controlling) concerns, and we will use another file for our presentation (or view) concerns.

set :session_secret, 'super secret'

get '/' do
  "Hello!"
end

get '/secret' do
  "Not secret"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  # %w(Amigo Oscar Viking) could use this to refactor
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end

post '/named-cat' do
  p params
  @name = params[:name]
  @age = params[:age]
  erb(:index)
end

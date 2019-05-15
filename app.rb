require_relative 'config/environment'
#in app.rb build out a GET request to load a homepage. The homepage should go to the main route /.
class App < Sinatra::Base

get '/' do
  erb :index
end

# controller action to view creat_puppy erb form.
get '/new' do
  erb :create_puppy
end

#takes the input from the user and renders a third view (views/display_puppy.erb)
post '/puppy'do
  @name = params["name"]
  @breed = params["breed"]
  @age = params["age"]

  Puppy.new(@name, @breed, @age) #would add permanence if we had a database!

  erb :display_puppy
end



end

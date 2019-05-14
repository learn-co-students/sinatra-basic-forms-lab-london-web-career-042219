# frozen_string_literal: true

require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @target = Puppy.new(params['name'], params['breed'], params['age'].to_i)
    @name = @target.name
    @breed = @target.breed
    @months_old = @target.months_old
    erb :display_puppy
  end
end

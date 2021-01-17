# app.rb
require "sinatra"
#require "activerecord"
require 'sinatra/activerecord'
#require "sinatra/activerecord/rake"

class App < Sinatra::Base
  get "/" do
    "Hello world!"
  end
  
  get '/users' do
    @users = User.all
    erb :index
  end
  
  get '/users/:id' do
    @user = User.find(params[:id])
    erb :show
  end
end

class User < ActiveRecord::Base
  validates_presence_of :name

end
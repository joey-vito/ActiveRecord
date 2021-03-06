#app.rb

require "sinatra"
require "sinatra/base"
require "sinatra/activerecord"
require "./models"

require 'sinatra/reloader' if development?
require 'byebug'

require 'awesome_print'


set :database, {adapter: "sqlite3", database: "db/database.db"}
#  or set :database_file, "path/to/database.yml"

class App < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  get '/' do
    haml :home
  end

  get '/users' do
    @users = User.all
    haml :users
  end

  get 'users/last' do
    @user = User.last
    haml :user
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    haml :user
  end

  run!
end

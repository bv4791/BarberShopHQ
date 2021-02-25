
require "rubygems"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"  

set :database, {adapter: "sqlite3", database: "foo.sqlite3"}

class Client < ActiveRecord::Base
end	

class Barber < ActiveRecord::Base
end

before do
	@barbers = Barber.all
end	

get '/' do	
	erb :index			
end

get '/visit' do
    erb :visit
end

post "/visit" do
	
	c = Client.new params[:client]
	c.save

	erb  "<h2>Спасибо что записались</h2>"

end
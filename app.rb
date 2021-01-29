require 'sinatra'
require './lib/movie'

get('/movies') do  
	@movie = Movie.new
	@movie.title = "Jaws"
	erb :index
end
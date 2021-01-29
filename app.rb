require 'sinatra'
require './lib/movie'

get('/movies') do  
	@movies = []
    @movies[0] = Movie.new
    @movies[0].title = "Jaws"
    @movies[1] = Movie.new
    @movies[1].title = "Alen"
    @movies[2] = Movie.new
    @movies[2].title = "Term"
	erb :index
end

get('/movies/new') do
  erb :new
end
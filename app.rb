require 'sinatra'
require './lib/movie'
require './lib/movie_store'

store = MovieStore.new('movies.yml')

get('/movies') do  
	#@movies = []
    #@movies[0] = Movie.new
    #@movies[0].title = "Jaws"
    @movies = store.all
	erb :index
end

get('/movies/new') do
  erb :new
end

post('/movies/create') do  
	@movie = Movie.new
	@movie.title = params['title']
	@movie.director = params['director']
	@movie.year = params['year']
	store.save(@movie)
	redirect '/movies/new'
	"Received: #{params.inspect}"
end
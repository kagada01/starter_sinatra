class PlayerController < ApplicationController

  set :views, "app/views/players"
  set :method_override, true

#index
  get '/players' do
    @players = Player.all
    erb :index
  end
#new
  get '/players/new' do
    @player = Player.new
    erb :new
  end
#create
  post '/players' do
    name = params[:players][:name]
    college = params[:players][:college]
    draft_year = params[:players][:draft_year]
    avg_points = params[:players][:avg_points]
    team_id = params[:players][:team_id]

    @player = Player.create(name: name, college: college,
                      draft_year: draft_year, avg_points: avg_points,
                      team_id: team_id)
    redirect to "/players/#{@player.id}"
  end

#show
  get '/players/:id' do

    @player = Player.find(params[:id])
    # byebug
    erb :show
  end

  patch '/players/:id' do
    @player = Player.find(params[:id])
    byebug
    redirect to "/players/#{@player.id}"
  end

  #edit
  get '/players/:id/edit' do
    @player = Player.find(params[:id])
# byebug
    erb :edit
  end



end

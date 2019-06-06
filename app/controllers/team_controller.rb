class TeamController < ApplicationController

  set :views, "app/views/teams"
  set :method_override, true

  get '/teams' do
    @teams = Team.all
    erb :index
  end

  get '/teams/new' do
    @team = Team.new
    erb :new
  end

  post '/teams' do
    name = params[:teams][:name]
    location = params[:teams][:location]
    coach = params[:teams][:coach]

    @team = Team.create(name: name,
                location: location,
                coach: coach)
    redirect to "/teams/#{@team.id}"
  end

  get '/teams/:id' do
    @team = Team.find(params[:id])
    erb :show
  end


end

class CarController < Sinatra::Base

  set :views, "app/views/cars"
  set :method_override, true

  get '/cars' do
    @cars = Car.all
    erb :index
  end

  get '/cars/new' do
    erb :new
  end

  post '/cars' do
    # byebug
    owner_id = params["owner"]
    owner = Owner.find(owner_id)
    make = params["cars"]["make"]
    model = params["cars"]["model"]
    year = params["cars"]["year"].to_i
    new_car = Car.create(make: make ,
                         model: model,
                         year: year,
                         owner_id: owner_id
                         )
                         byebug
    redirect "cars/#{@car.id}"
  end

  get '/cars/:id' do
# byebug
    id = params[:id]

    @car = Car.find(id)
    erb :show
  end

end

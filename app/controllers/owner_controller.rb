class OwnerController < Sinatra::Base

  set :views, "app/views/owners"
  set :method_override, true

  get '/owners' do
    @owners = Owner.all
    erb :index
  end


end

require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :new
    end

    get '/new' do
      erb :new
    end




    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |spec|
        # binding.pry
        Ship.new(spec)
      end
      @ships = Ship.all
      erb :show
    end

  end
end

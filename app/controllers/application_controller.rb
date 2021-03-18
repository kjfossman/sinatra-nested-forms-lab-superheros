require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :team
    end

    post '/teams' do 
       
        @team = Team.new
        @team.name = params[:team][:name]
        @team.motto = params[:team][:motto]

        params[:team][:superhero].each do |details|
            Superhero.new(details)
            
        end
       
        erb :super_hero
    end
end

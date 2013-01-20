require 'sinatra/base'

class TeeDubLabs < Sinatra::Base  
  get '/' do
    redirect '/projects'
  end

  get '/stylesheets/style.css' do
    scss :style
  end

  get '/projects/?' do
    @projects = [
      OpenStruct.new( name: 'Some Project', description: 'some description' ),
      OpenStruct.new( name: 'Another Project', description: 'an awesome, interesting project' )
    ]
    haml :projects
  end
end


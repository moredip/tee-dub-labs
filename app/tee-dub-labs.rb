require 'sinatra/base'
require 'haml'
require 'json'

class TeeDubLabs < Sinatra::Base  

  get '/' do
    redirect '/projects'
  end

  get '/stylesheets/style.css' do
    scss :style
  end

  get '/projects/?' do
    @projects = load_projects
    haml :projects
  end

  private

  def load_projects
    projects_hash = File.open( settings.projects_path, 'r' ) do |f|
      JSON.load(f)
    end
    projects_hash.map{ |p| OpenStruct.new(p) }
  end
end


require 'heroku-api'

module Deployer
  module TalksToHeroku
    def heroku
      @heroku ||= Heroku::API.new()
    end
  end
end

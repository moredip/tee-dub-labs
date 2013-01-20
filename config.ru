require 'sinatra/base'

class MySimpleApp < Sinatra::Base  
  get(/.+/) do
    'hello world'
  end
end

run MySimpleApp

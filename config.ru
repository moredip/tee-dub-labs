require 'sinatra/base'

class MySimpleApp < Sinatra::Base  
  get(/.+/) do
    'hello world. I just got updated via a github edit.'
  end
end

run MySimpleApp

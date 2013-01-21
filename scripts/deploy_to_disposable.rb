require_relative 'source_secrets'
require 'heroku-headless/disposable_deployer'

source_secrets
HerokuHeadless::DisposableDeployer.new.go

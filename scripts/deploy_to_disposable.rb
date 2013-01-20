require_relative 'source_secrets'
require_relative 'deployer/disposable_deployer'

source_secrets
Deployer::DisposableDeployer.new.go

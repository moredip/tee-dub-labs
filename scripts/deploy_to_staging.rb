require_relative 'source_secrets'
require_relative 'deployer/disposable_deployer'

STAGING_APP_NAME='tee-dub-labs---staging'

source_secrets
Deployer::Deployer.deploy( STAGING_APP_NAME )

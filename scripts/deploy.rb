require_relative 'deployer/disposable_deployer'

def source_secrets
  secrets_file = File.expand_path( '../../.secrets', __FILE__ )
  return unless File.exists?(secrets_file)

  File.readlines(secrets_file).each do |line|
    (key,value) = line.split("=")
    key.sub!(/^export /,'')
    ENV[key] = value
  end
  nil
end

source_secrets
Deployer::DisposableDeployer.new.go

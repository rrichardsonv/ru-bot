require_relative './environment'

# Connect to database
OTR::ActiveRecord.configure_from_file! Config.root.join('config', 'postgresql.yml')

# Load application
[
  %w(app models ** *.rb),
  %w(app commands ** *.rb),
].each do |pattern|
  Dir.glob(Config.root.join(*pattern)).each do |file|
    require file
  end
end


ActiveRecord::Base.establish_connection(
  YAML.load_file('config/postgresql.yml')[ENV['RACK_ENV']]
)
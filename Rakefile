require 'rubygems'
require 'bundler/setup'
require 'standalone_migrations'

StandaloneMigrations::Tasks.load_tasks

if %w(development test).include?(ENV['RACK_ENV'])
  require 'rspec/core/rake_task'
  require 'rubocop/rake_task'

  RSpec::Core::RakeTask.new(:spec) do |spec|
    spec.pattern = FileList['spec/**/*_spec.rb']
  end
  
  RuboCop::RakeTask.new

  task(:default).clear
  task default: [:spec, :rubocop]
end
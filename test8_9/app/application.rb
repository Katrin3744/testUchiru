ENV['ENVIRONMENT'] ||= 'development'

require 'pg'
require 'active_record'
require 'erb'
require_relative './models/student.rb'
require_relative './models/parent.rb'
require_relative './models/parents_student.rb'

def db_configuration
  db_configuration_file_path = File.join(File.expand_path('..', __dir__), 'db', 'config.yml')
  db_configuration_result = ERB.new(File.read(db_configuration_file_path)).result
  YAML.safe_load(db_configuration_result, aliases: true)
end

ActiveRecord::Base.establish_connection(db_configuration[ENV['ENVIRONMENT']])

module Application
  class Error < StandardError; end
end
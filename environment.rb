require 'active_record'
require 'faker'

Dir.glob('./lib/*').each do |file|
  require file
end

Dir.glob('./db/migrations/*').each do |file|
  require file
end

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'active_record_without_rails'
)

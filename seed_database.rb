require 'faker'
require_relative 'environment'
require_relative 'lib/company'

Company.destroy_all

10.times do |index|
  company = Company.create!(name: Faker::Company.unique.name,
                            description: Faker::Commerce.department,
                            )
end

puts "#{Company.count} companies successfully created."

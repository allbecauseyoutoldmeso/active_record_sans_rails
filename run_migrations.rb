require_relative 'environment'
require_relative 'db/migrations/create_companies'

CreateCompanies.migrate(:down)

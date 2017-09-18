require_relative '../../environment'

class CreateCompanies < ActiveRecord::Migration[4.2]

  def up
    create_table :companies do |t|
      t.string :name
      t.string :description
    end
  end

  def down
    drop_table :companies
  end

end

CreateCompanies.migrate(:up)

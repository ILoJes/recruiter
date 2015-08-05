class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :account
      t.string :password
      t.text :about
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end
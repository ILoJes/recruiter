class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :about
      t.string :email
      t.string :password
      t.references :status, index: true, foreign_key: true
      t.string :phone

      t.timestamps null: false
    end
  end
end

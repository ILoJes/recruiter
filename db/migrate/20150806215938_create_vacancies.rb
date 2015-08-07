class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :summary
      t.text :about_company
      t.text :responsibilities
      t.text :conditions
      t.text :bonuses
      t.integer :min_salary
      t.integer :max_salary
      t.references :company, index: true, foreign_key: true
      t.integer :experience
      t.references :status, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

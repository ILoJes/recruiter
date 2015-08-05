class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :name
      t.references :company, index: true, foreign_key: true
      t.float :salary_max
      t.float :salary_min
      t.text :body
      t.text :skills
      t.text :respons
      t.integer :experience
      t.text :conditions
      t.boolean :status

      t.timestamps null: false
    end
  end
end

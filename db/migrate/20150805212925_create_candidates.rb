class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :fio
      t.string :password
      t.string :email
      t.text :history
      t.text :summary
      t.text :skils
      t.float :salary_min
      t.float :salary_max
      t.integer :expirience
      t.boolean :status

      t.timestamps null: false
    end
  end
end

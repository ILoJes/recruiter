class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.text :notes
      t.references :sex, index: true, foreign_key: true
      t.integer :salary
      t.string :current_position
      t.date :work_from
      t.date :birthday
      t.references :candidates_status, index: true, foreign_key: true
      t.references :recruiter, index: true, foreign_key: true
      t.boolean :shared

      t.timestamps null: false
    end
  end
end

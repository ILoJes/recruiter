class CreateCandidatesSkills < ActiveRecord::Migration
  def change
    create_table :candidates_skills do |t|
      t.references :candidate, index: true, foreign_key: true
      t.references :skill, index: true, foreign_key: true
      t.string :calue

      t.timestamps null: false
    end
  end
end

class CreateVacanciesSkills < ActiveRecord::Migration
  def change
    create_table :vacancies_skills do |t|
      t.references :vacancy, index: true, foreign_key: true
      t.references :skill, index: true, foreign_key: true
      t.integer :value

      t.timestamps null: false
    end
  end
end

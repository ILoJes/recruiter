class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.references :skills_type, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end

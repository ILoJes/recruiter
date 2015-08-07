class CreateSkillsTypes < ActiveRecord::Migration
  def change
    create_table :skills_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

class CreateCandidatesStatuses < ActiveRecord::Migration
  def change
    create_table :candidates_statuses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

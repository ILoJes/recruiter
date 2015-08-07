class CreateCandidatesStatusesHistories < ActiveRecord::Migration
  def change
    create_table :candidates_statuses_histories do |t|
      t.references :candidate, index: true, foreign_key: true
      t.references :vacancy, index: true, foreign_key: true
      t.references :candidates_status, index: true, foreign_key: true
      t.date :date
      t.text :notes

      t.timestamps null: false
    end
  end
end

class CreateCandidatesContacts < ActiveRecord::Migration
  def change
    create_table :candidates_contacts do |t|
      t.references :candidate, index: true, foreign_key: true
      t.references :channel, index: true, foreign_key: true
      t.string :contact

      t.timestamps null: false
    end
  end
end

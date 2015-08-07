class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.references :candidates_contact, index: true, foreign_key: true
      t.references :recruiter, index: true, foreign_key: true
      t.date :date
      t.text :message

      t.timestamps null: false
    end
  end
end

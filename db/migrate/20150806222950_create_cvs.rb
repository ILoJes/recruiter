class CreateCvs < ActiveRecord::Migration
  def change
    create_table :cvs do |t|
      t.references :candidate, index: true, foreign_key: true
      t.references :recruiter, index: true, foreign_key: true
      t.binary :file
      t.text :notes

      t.timestamps null: false
    end
  end
end

class CreateRecruiters < ActiveRecord::Migration
  def change
    create_table :recruiters do |t|
      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
      t.references :company, index: true, foreign_key: true
      t.references :status, index: true, foreign_key: true
      t.string :phone
      t.references :role, index: true, foreign_key: true
      t.references :status, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

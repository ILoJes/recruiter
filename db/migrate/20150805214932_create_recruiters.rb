class CreateRecruiters < ActiveRecord::Migration
  def change
    create_table :recruiters do |t|
      t.string :fio
      t.references :company, index: true, foreign_key: true
      t.string :account
      t.string :password
      t.string :email

      t.timestamps null: false
    end
  end
end

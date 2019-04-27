class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :full_name
      t.string :role_title
      t.string :photo_url
      t.string :email
      t.integer :team_id, default: nil

      t.timestamps
    end
  end
end

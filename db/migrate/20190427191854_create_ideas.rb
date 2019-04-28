class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :topic
      t.string :problem
      t.string :solution
      t.string :audience
      t.string :full_name

      t.timestamps
    end
  end
end

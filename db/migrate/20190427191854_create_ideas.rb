class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :topic
      t.string :description
      t.string :problem
      t.string :solution
      t.string :audience

      t.timestamps
    end
  end
end

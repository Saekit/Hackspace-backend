class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :pitch_title
      t.string :pitch_topic
      t.string :pitch_problem
      t.string :pitch_solution
      t.boolean :open

      t.timestamps
    end
  end
end

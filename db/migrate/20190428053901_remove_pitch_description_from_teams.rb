class RemovePitchDescriptionFromTeams < ActiveRecord::Migration[5.2]
  def change
    remove_column :teams, :pitch_description, :string
  end
end

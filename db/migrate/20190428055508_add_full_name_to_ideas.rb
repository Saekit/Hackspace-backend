class AddFullNameToIdeas < ActiveRecord::Migration[5.2]
  def change
    add_column :ideas, :full_name, :string
  end
end

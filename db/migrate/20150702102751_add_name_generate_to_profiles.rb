class AddNameGenerateToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :generate_name, :boolean
  end
end

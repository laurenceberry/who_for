class AddAccessibilityFieldsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :living_situation, :string
    add_column :profiles, :interests, :string
    add_column :profiles, :quote, :string
    add_column :profiles, :ability, :string
    add_column :profiles, :aptitude, :string
    add_column :profiles, :attitude, :text
    add_column :profiles, :bigger_picture, :string
  end
end

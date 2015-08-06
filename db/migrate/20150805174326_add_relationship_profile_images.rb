class AddRelationshipProfileImages < ActiveRecord::Migration
  def change
    add_column :profile_image_repeatables, :profile_id, :integer
  end
end

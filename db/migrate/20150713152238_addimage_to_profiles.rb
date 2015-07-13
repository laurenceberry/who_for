class AddimageToProfiles < ActiveRecord::Migration
  def up
    add_attachment :profiles, :image
  end

  def down
    remove_attachment :profiles, :image
  end
end

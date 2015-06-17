class ProfilePackAssociation < ActiveRecord::Migration
  def change
    add_column :profiles, :pack_id, :integer
  end
end

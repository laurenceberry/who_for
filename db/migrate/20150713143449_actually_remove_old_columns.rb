class ActuallyRemoveOldColumns < ActiveRecord::Migration
  def change
    remove_column :profiles, :strength
    remove_column :profiles, :weakness
    remove_column :profiles, :considerations
    remove_column :profiles, :ability
    remove_column :profiles, :aptitude
    remove_column :profiles, :attitude
    remove_column :profiles, :bigger_picture
  end
end

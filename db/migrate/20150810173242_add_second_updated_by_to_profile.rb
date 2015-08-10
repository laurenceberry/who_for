class AddSecondUpdatedByToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :updated_by, :string
  end
end

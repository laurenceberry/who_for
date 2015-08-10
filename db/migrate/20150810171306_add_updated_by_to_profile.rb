class AddUpdatedByToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :created_by, :string
  end
end

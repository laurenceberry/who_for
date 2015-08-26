class AddCreatedByToPacks < ActiveRecord::Migration
  def change
    add_column :packs, :created_by, :string
    add_column :packs, :is_public, :boolean
  end
end

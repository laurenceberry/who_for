class AddRepeatableColumns < ActiveRecord::Migration
  def change
    add_column :profiles, :characteristics, :string
    add_column :profiles, :oppertunities, :string
    add_column :profiles, :cautions, :string
  end
end

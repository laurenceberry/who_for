class ChangeTextfieldsToTextareas < ActiveRecord::Migration

  def change
    remove_column :profiles, :characteristics
    remove_column :profiles, :oppertunities
    remove_column :profiles, :cautions
    remove_column :profiles, :background
    remove_column :profiles, :motivation

    add_column :profiles, :characteristics, :text
    add_column :profiles, :oppertunities, :text
    add_column :profiles, :cautions, :text
    add_column :profiles, :background, :text
    add_column :profiles, :motivation, :text
  end

end

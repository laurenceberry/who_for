class ChangeTextfieldsToTextareasForRepeatables < ActiveRecord::Migration
  def change
    remove_column :profile_characteristic_repeatables, :content
    remove_column :profile_basic_repeatables, :content

    add_column :profile_characteristic_repeatables, :content, :text
    add_column :profile_basic_repeatables, :content, :text
  end
end

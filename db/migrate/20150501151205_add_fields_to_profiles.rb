class AddFieldsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :age, :string
    add_column :profiles, :occupation, :string

    add_column :profiles, :strength, :string
    add_column :profiles, :weakness, :string

    add_column :profiles, :considerations, :text

    add_column :profiles, :pack, :string

  end
end

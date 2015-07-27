class CreateProfileBasicRepeatables < ActiveRecord::Migration
  def change
    create_table :profile_basic_repeatables do |t|
      t.string :name
      t.string :content
      t.belongs_to :profile, index: true

      t.timestamps
    end
  end
end

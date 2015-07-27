class CreateProfileCharacteristicRepeatables < ActiveRecord::Migration
  def change
    create_table :profile_characteristic_repeatables do |t|
      t.string :name
      t.string :content
      t.belongs_to :profile, index: true

      t.timestamps
    end
  end
end

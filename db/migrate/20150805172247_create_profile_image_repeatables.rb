class CreateProfileImageRepeatables < ActiveRecord::Migration
  def change
    create_table :profile_image_repeatables do |t|

      t.timestamps
    end
  end
end

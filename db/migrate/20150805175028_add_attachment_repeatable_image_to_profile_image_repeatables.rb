class AddAttachmentRepeatableImageToProfileImageRepeatables < ActiveRecord::Migration
  def self.up
    change_table :profile_image_repeatables do |t|
      t.attachment :repeatable_image
    end
  end

  def self.down
    remove_attachment :profile_image_repeatables, :repeatable_image
  end
end

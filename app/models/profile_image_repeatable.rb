class ProfileImageRepeatable < ActiveRecord::Base
  belongs_to :profile

  has_attached_file :repeatable_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => ""
  validates_attachment_content_type :repeatable_image, :content_type => /\Aimage\/.*\Z/
  validates_attachment_size :repeatable_image, less_than: 5.megabytes
end

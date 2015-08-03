class Pack < ActiveRecord::Base
  has_many :profiles

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => ""
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  validates :name, presence: true, length: { minimum: 2 }
end

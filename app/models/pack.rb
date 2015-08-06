class Pack < ActiveRecord::Base
  has_many :profiles

  has_attached_file :image, :styles => { :thumb => "100x100>" }, :default_url => ""
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_attachment_size :image, less_than: 2.megabytes

  validates :name, presence: true, length: { minimum: 2 }
end

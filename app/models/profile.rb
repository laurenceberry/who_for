class Profile < ActiveRecord::Base
  before_create :generate_fake_name

  belongs_to :pack
  has_many :scalers, class_name: "ProfileScaler"
  has_many :quotes, class_name: "ProfileQuote"
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => ""
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  accepts_nested_attributes_for :scalers, allow_destroy: true
  accepts_nested_attributes_for :quotes, allow_destroy: true

  validates :description, presence: true
  validates :age, presence: true, numericality: true

  def generate_fake_name
    if self.generate_name?
      self.name = FFaker::Name.name
    else
      # If generate_name is false but name is empty generate anyway.
      self.name = self.name != "" ? self.name : FFaker::Name.name
    end
  end
end

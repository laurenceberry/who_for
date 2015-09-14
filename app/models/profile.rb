class Profile < ActiveRecord::Base
  before_create :generate_fake_name

  belongs_to :pack
  has_many :scalers, class_name: "ProfileScaler", :dependent => :destroy
  has_many :quotes, class_name: "ProfileQuote", :dependent => :destroy
  has_many :basic_repeatables, class_name: "ProfileBasicRepeatable", :dependent => :destroy
  has_many :characteristic_repeatables, class_name: "ProfileCharacteristicRepeatable", :dependent => :destroy
  has_many :images, class_name: "ProfileImageRepeatable", :dependent => :destroy

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => ""
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_attachment_size :image, less_than: 5.megabytes

  accepts_nested_attributes_for :scalers, :allow_destroy => true, :reject_if => :all_blank
  accepts_nested_attributes_for :quotes, :allow_destroy => true, :reject_if => :all_blank
  accepts_nested_attributes_for :basic_repeatables, :allow_destroy => true, :reject_if => :all_blank
  accepts_nested_attributes_for :characteristic_repeatables, :allow_destroy => true, :reject_if => :all_blank
  accepts_nested_attributes_for :images, :allow_destroy => true, :reject_if => :all_blank

  def generate_fake_name
    if self.generate_name?
      self.name = FFaker::Name.name
    else
      # If generate_name is false but name is empty generate anyway.
      self.name = self.name != "" ? self.name : FFaker::Name.name
    end
  end
end

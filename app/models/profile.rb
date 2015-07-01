class Profile < ActiveRecord::Base
  belongs_to :pack
  has_many :scalers, class_name: "ProfileScaler"
  accepts_nested_attributes_for :scalers, allow_destroy: true

  validates :name, presence: true,
                    length: { minimum: 2 }
  validates :description, presence: true,
                    length: { maximum: 140 }
  validates :pack, presence: true
end

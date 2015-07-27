class ProfileCharacteristicRepeatable < ActiveRecord::Base
  belongs_to :profile

  validates :name, presence: true
  validates :content, presence: true
end

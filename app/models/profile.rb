class Profile < ActiveRecord::Base
  belongs_to :pack
  validates :name, presence: true,
                    length: { minimum: 2 }
  validates :description, presence: true,
                    length: { maximum: 140 }
  validates :pack, presence: true
end

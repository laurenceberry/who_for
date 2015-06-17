class Pack < ActiveRecord::Base
  has_many :profiles

  validates :name, presence: true, length: { minimum: 2 }
end

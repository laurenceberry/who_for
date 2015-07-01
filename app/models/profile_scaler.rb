class ProfileScaler < ActiveRecord::Base
  belongs_to :profile

  validates :scale, presence: true, numericality: true
  validates :out_of, presence: true, numericality: true
end

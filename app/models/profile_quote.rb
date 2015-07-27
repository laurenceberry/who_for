class ProfileQuote < ActiveRecord::Base
  belongs_to :profile

  validates :quote, presence: true
end

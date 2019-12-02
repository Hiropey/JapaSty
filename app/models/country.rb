class Country < ApplicationRecord
  validates :country, presence: true
  belongs_to :region
  has_many :post
end

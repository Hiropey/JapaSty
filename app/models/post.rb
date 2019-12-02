class Post < ApplicationRecord
  validates :total_rate, presence: true
  belongs_to :user
  belongs_to :country
end

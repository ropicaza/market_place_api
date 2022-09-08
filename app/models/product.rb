class Product < ApplicationRecord
  validates :title, :user_id, presence: true
  validates :price, numericality: { grater_than_or_equal_to: 0 }, presence: true

  belongs_to :user
end

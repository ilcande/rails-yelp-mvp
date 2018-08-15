class Restaurant < ApplicationRecord
  CATEGORY = %w(chinese italian japanese french belgian)

  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :phone_number, uniqueness: true, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian),
            message: "%{value} is not a valid restaurant category" }
end

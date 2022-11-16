class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, :name, :address, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"],
  message: "category is not a valid"}
end

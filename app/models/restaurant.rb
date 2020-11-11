class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"],
    message: "%{value is not a valid language}" }
end

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"],
    message: "%{value is not a valid language}" }
  validates_presence_of :name, on: :create, message: "can't be blank"
  validates_presence_of :address, on: :create, message: "can't be blank"
end

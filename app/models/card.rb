class Card < ApplicationRecord
  has_many :decks

  validates :name, presence: true
  validates :set, presence: true, length: { maximum: 3 }
  validates :cardnum, presence: true
  validates :quantity, presence: true
  validates :image, presence: true
end

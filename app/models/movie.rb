class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, presence: true
  validates :plot, length: { in: 10...500 }

  has_many :actors
end

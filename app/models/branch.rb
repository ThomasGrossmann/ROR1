class Branch < ApplicationRecord
  has_and_belongs_to_many :school_classes
  has_and_belongs_to_many :users
  has_many :notes

  validates :name, presence: true, uniqueness: true
  validates :passed_at, presence: true

  enum status: {
    active: 0,
    inactive: 1,
    future: 2
  }
end

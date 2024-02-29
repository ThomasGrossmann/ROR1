class Branch < ApplicationRecord
  has_and_belongs_to_many :teachers
  has_and_belongs_to_many :students
  has_many :notes

  enum status: {
    active: 0,
    inactive: 1,
    future: 2
  }
end

class Grade < ApplicationRecord
  belongs_to :student, class_name: 'User', foreign_key: 'user_id'
  belongs_to :exam

  validates :grade, presence: true
  validates :grade, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 6 }
end

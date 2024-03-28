class Grade < ApplicationRecord
  belongs_to :student, class_name: 'User', foreign_key: 'user_id'
  belongs_to :exam

  validates :grade, presence: true
end

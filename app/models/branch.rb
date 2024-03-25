class Branch < ApplicationRecord
  has_and_belongs_to_many :school_classes
  has_and_belongs_to_many :teachers, join_table: :branches_users, class_name: 'User', foreign_key: 'user_id', association_foreign_key: 'branch_id'
  has_many :notes

  validates :name, presence: true, uniqueness: true

  enum status: {
    active: 0,
    inactive: 1,
    future: 2
  }
end

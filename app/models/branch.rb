class Branch < ApplicationRecord
  has_and_belongs_to_many :school_classes
  has_and_belongs_to_many :teachers, join_table: :branches_users, class_name: 'User', foreign_key: 'user_id', association_foreign_key: 'branch_id'
  has_many :exams
  belongs_to :semester
  
  validates :name, presence: true, uniqueness: true

  enum status: {
    active: 0,
    inactive: 1,
    future: 2
  }

  def status_tag_style
    case status
    when 'active'
      'px-2 rounded-md bg-green-200'
    when 'inactive'
      'px-2 rounded-md bg-red-200'
    when 'future'
      'px-2 rounded-md bg-yellow-200'
    end
  end
end

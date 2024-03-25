class SchoolClass < ApplicationRecord
  has_and_belongs_to_many :students, join_table: :school_classes_users, class_name: 'User', foreign_key: 'user_id', association_foreign_key: 'school_class_id'
  has_and_belongs_to_many :branches
  belongs_to :teacher, class_name: 'User', foreign_key: 'user_id'

  validates :name, presence: true
  validates :school_year, presence: true, numericality: { only_integer: true}

  def fullname
    "#{name} (#{school_year})"
  end
end

class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :grades
  has_and_belongs_to_many :school_classes, join_table: :school_classes_users, class_name: 'SchoolClass', foreign_key: 'school_class_id', association_foreign_key: 'user_id'
  has_and_belongs_to_many :branches

  validates :email, presence: true, uniqueness: true
  validates :password, :type, :firstname, :lastname, :address, :postal_code, :city, :phone, presence: true

  def teacher?
    self.type == "Teacher"
  end

  def student?
    self.type == "Student"
  end

  def dean? 
    self.type == "Dean"
  end

  def fullname
    "#{firstname} #{lastname}"
  end

  def fullname_type
    "#{fullname} (#{type})"
  end
end

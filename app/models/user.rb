class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :grades
  has_and_belongs_to_many :school_classes
  has_and_belongs_to_many :branches

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

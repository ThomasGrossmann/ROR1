class Student < ApplicationRecord
  has_and_belongs_to_many :branches
  has_and_belongs_to_many :school_classes
  has_many :notes

  def fullname
    "#{firstname} #{lastname}"
  end
end

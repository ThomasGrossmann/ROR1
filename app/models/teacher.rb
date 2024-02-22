class Teacher < ApplicationRecord
  has_many :school_classes
  has_and_belongs_to_many :branches

  def fullname
    "#{firstname} #{lastname}"
  end
end

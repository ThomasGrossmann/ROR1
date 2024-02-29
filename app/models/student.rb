class Student < ApplicationRecord
  has_and_belongs_to_many :branches
  has_and_belongs_to_many :school_classes
  has_many :notes

  enum state: {
    registered: 0,
    in_formation: 1,
    dropped_out: 2,
    finished: 3
  }

  def fullname
    "#{firstname} #{lastname}"
  end
end

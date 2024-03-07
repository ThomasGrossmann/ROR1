class SchoolClass < ApplicationRecord
  belongs_to :teacher
  has_and_belongs_to_many :students

  validates :name, presence: true
  validates :school_year, presence: true, numericality: { only_integer: true}

  def fullname
    "#{name} (#{school_year})"
  end
end

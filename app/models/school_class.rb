class SchoolClass < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :branches

  validates :name, presence: true
  validates :school_year, presence: true, numericality: { only_integer: true}

  def fullname
    "#{name} (#{school_year})"
  end
end

class Semester < ApplicationRecord
  has_many :branches

  def name
    "Semester #{number}"
  end
end

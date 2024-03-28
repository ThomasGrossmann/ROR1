class Exam < ApplicationRecord
  belongs_to :branch
  has_one :grade

  def fullname
    "#{branch.name} : #{theme}"
  end
end

class Exam < ApplicationRecord
  belongs_to :branch
  has_one :grade

  validates :theme, :date, presence: true

  def fullname
    "#{branch.name} : #{theme}"
  end
end

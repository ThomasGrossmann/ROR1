class Student < ApplicationRecord
  def fullname
    "#{firstname} #{lastname}"
  end
end

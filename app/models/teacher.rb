class Teacher < ApplicationRecord
  def fullname
    "#{firstname} #{lastname}"
  end
end

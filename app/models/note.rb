class Note < ApplicationRecord
  belongs_to :branch
  belongs_to :student
end

class Note < ApplicationRecord
  belongs_to :user
  belongs_to :branch
  
  validates :note, presence: true
end

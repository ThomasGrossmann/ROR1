class Note < ApplicationRecord
  belongs_to :student, class_name: 'User', foreign_key: 'user_id'
  belongs_to :branch

  validates :note, :passed_at, presence: true

  def passed_at_formatted
    passed_at.strftime("%B #{passed_at.day.ordinalize} %Y")
  end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :notes
  has_and_belongs_to_many :school_classes
  has_and_belongs_to_many :branches

  def teacher?
    self.type == "Teacher"
  end

  def student?
    self.type == "Student"
  end

  def fullname
    "#{firstname} #{lastname}"
  end
end

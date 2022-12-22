class Users < ApplicationRecord
  has_many :essays
  has_secure_password
  validates :username, presence: true, uniqueness: true

  def teacher?
    type == "Teacher"
  end

  def student?
    type == "Student"
  end
end

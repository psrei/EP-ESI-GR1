class Essay < ApplicationRecord
  belongs_to :user
  validates :title, :body, presence: true

  def corrected?
    corrected
  end
end

class Gram < ApplicationRecord
  validates :message, presence: true, length: {minimum: 2}

  belongs_to :user
end

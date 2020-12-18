class Akiya < ApplicationRecord
  validates :address, presence: true, uniqueness: true

  belongs_to :user
end

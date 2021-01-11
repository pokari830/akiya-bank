class Akiya < ApplicationRecord
  validates :address, presence: true, uniqueness: true

end

class Akiya < ApplicationRecord
  validate :address, presence: true, uniqueness: true
end

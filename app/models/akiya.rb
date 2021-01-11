class Akiya < ApplicationRecord
  validates :address, presence: true, uniqueness: true
  mount_uploader :image, ImageUploader
end

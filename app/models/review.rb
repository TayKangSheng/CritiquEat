class Review < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user
  validates_presence_of :title, :body, :user, :location, :price, :taste, :address
end

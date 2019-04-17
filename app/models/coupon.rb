class Coupon < ApplicationRecord
  mount_uploader :image, ImagesUploader

  belongs_to :category
  belongs_to :publisher
end
class Coupon < ApplicationRecord
  mount_uploader :image, ImagesUploader

  has_many :coupon_profiles
  has_many :profiles, through: :coupon_profiles
  belongs_to :category
  belongs_to :publisher
end
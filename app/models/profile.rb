class Profile < ApplicationRecord
  belongs_to :user
  has_many :category_profiles
  has_many :categories, through: :category_profiles
  has_many :coupon_profiles
  has_many :coupons, through: :coupon_profiles
  accepts_nested_attributes_for :category_profiles
  accepts_nested_attributes_for :coupon_profiles

  def already_clipped?(coupon)
    self.coupon_profiles.exists?(coupon_id: coupon.id)
  end
end
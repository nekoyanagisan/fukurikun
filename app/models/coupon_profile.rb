class CouponProfile < ApplicationRecord
  belongs_to :coupon
  belongs_to :profile

  validates_uniqueness_of :coupon_id, scope: :profile_id
end

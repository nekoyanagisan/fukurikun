class CouponProfile < ApplicationRecord
  belongs_to :coupon
  belongs_to :profile
end

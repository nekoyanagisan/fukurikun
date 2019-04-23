class ClippedCouponsController < ApplicationController
  def index
    @clipped_coupons = current_user.profile.coupons
  end

  def create
    @coupon_profile = CouponProfile.new(coupon_id: params[:coupon_id], profile_id: current_user.profile.id)
    p params
    p @coupon_profile
    @coupon_profile.save
  end

  def destroy
    @coupon_profile = CouponProfile.find_by(coupon_id: params[:coupon_id], profile_id: current_user.profile.id)
    @coupon_profile.destroy
  end
end

class ClippedCouponsController < ApplicationController
  def index
    @clipped_coupons = current_user.profile.coupons
  end

  def create
    @clipped_coupon = current_user.profile.coupon_profiles.new(coupon_id: params[:coupon_id])
    @clipped_coupon.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    clipped_coupon = current_user.profile.coupon_profiles.find_by(coupon_id: params[:coupon_id])
    clipped_coupon.destroy
    redirect_back(fallback_location: root_path)
  end
end

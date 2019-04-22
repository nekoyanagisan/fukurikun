class ClippedCouponsController < ApplicationController
  def index
    @clipped_coupons = current_user.profile.coupons
  end
end

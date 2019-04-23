class CreateCouponProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :coupon_profiles do |t|
      t.references :coupon, foreign_key: true
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end

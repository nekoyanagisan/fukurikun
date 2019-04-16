class RemoveCategoryFromCoupons < ActiveRecord::Migration[5.2]
  def change
    remove_column :coupons, :category, :string
  end
end

class RemovePublisherFromCoupons < ActiveRecord::Migration[5.2]
  def change
    remove_column :coupons, :publisher, :string
  end
end

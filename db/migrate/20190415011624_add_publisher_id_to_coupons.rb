class AddPublisherIdToCoupons < ActiveRecord::Migration[5.2]
  def change
    add_column :coupons, :publisher_id, :integer
    add_index :coupons, :publishery_id
  end
end

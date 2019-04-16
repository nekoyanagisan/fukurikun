class AddIndexToCoupons < ActiveRecord::Migration[5.2]
  def change
    add_index :coupons, :publisher_id
  end
end

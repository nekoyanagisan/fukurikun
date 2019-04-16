class AddCategoryIdToCoupons < ActiveRecord::Migration[5.2]
  def change
    add_column :coupons, :category_id, :integer
    add_index :coupons, :category_id
  end
end

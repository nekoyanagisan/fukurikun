class AddImagePathToCoupons < ActiveRecord::Migration[5.2]
  def change
    add_column :coupons, :image, :string
  end
end

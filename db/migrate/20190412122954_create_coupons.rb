class CreateCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons do |t|
      t.string :category
      t.string :publisher
      t.text :detail
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end

class AddCategoryIdToPublishers < ActiveRecord::Migration[5.2]
  def change
    add_column :publishers, :category_id, :integer
    add_index :publishers, :category_id
  end
end

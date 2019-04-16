class AddImageToPublishers < ActiveRecord::Migration[5.2]
  def change
    add_column :publishers, :image, :string
  end
end

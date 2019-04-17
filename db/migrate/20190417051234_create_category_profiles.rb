class CreateCategoryProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :category_profiles do |t|
      t.references :category, foreign_key: true
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end

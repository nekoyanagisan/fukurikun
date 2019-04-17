class CategoryProfile < ApplicationRecord
  belongs_to :category
  belongs_to :profile

  def selectable_categories
    Category.all
  end
end

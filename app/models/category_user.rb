class CategoryUser < ApplicationRecord
  belongs_to :category
  belongs_to :user

  def selectable_categories
    Category.all
  end
end

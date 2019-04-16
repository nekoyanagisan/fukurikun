class Category < ApplicationRecord
  has_many :coupons
  has_many :publishers
  has_many :category_users
  has_many :users, through: :category_users
end

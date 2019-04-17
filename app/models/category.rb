class Category < ApplicationRecord
  has_many :coupons
  has_many :publishers
  has_many :category_profiles
  has_many :profiles, through: :category_profiles
end

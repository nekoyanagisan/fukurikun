class Profile < ApplicationRecord
  belongs_to :user
  has_many :category_profiles
  has_many :categories, through: :category_profiles
  accepts_nested_attributes_for :category_profiles
end
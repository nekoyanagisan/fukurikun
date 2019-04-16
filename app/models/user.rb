class User < ApplicationRecord
  has_many :category_users
  has_many :categories, through: :category_users
  accepts_nested_attributes_for :category_users
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

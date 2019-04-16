class Publisher < ApplicationRecord
  mount_uploader :image, ImagesUploader

  belongs_to :category
  has_many :coupons

  def self.search(search)
    if search
      Publisher.where(['name LIKE ?', "%#{search}%"])
    else
      Publisher.all
    end
  end
end

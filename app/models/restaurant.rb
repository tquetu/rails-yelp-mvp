class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, presence:true, acceptance: { accept: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
end

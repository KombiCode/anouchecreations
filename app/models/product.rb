class Product < ApplicationRecord
  belongs_to :category
  belongs_to :inventory
  belongs_to :discount
  has_many :product_option
end

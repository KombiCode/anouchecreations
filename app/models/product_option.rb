class ProductOption < ApplicationRecord
  belongs_to :option
  belongs_to :product
end

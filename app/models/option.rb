class Option < ApplicationRecord
  belongs_to :option_group
  has_many :product_option
end

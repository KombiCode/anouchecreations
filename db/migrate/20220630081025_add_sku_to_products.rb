class AddSkuToProducts < ActiveRecord::Migration[7.0]
  def up
    safety_assured {
      add_column :products, :sku, :string
    }
  end
  def downu
    safety_assured {
      remove_column :products, :sku
    }
  end
end

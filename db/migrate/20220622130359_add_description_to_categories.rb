class AddDescriptionToCategories < ActiveRecord::Migration[7.0]
  def up
    safety_assured {
      add_column :categories, :description, :text
    }
  end
  def downu
    safety_assured {
      remove_column :categories, :description
    }
  end
end

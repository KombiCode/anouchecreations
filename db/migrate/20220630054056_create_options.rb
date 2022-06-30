class CreateOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :options do |t|
      t.string :name
      t.references :option_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateVendors < ActiveRecord::Migration[6.0]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :price_range

      t.timestamps
    end
  end
end

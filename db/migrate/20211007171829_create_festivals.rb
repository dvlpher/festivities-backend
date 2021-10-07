class CreateFestivals < ActiveRecord::Migration[6.0]
  def change
    create_table :festivals do |t|
      t.string :name
      t.string :description
      t.integer :location_id
      t.string :price_range

      t.timestamps
    end
  end
end

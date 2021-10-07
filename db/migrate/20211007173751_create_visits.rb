class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.integer :trip_id
      t.integer :festival_id
      t.date :date

      t.timestamps
    end
  end
end

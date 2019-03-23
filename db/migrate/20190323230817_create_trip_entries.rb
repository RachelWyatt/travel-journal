class CreateTripEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :trip_entries do |t|
      t.string :journal_entry
      t.datetime :created_at
      t.integer :trip_id
      t.integer :location_id
      t.timestamps
    end
  end
end

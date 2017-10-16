class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.string  :name
      t.string  :venue_id

      t.timestamps
    end
  end
end

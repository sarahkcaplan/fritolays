class CreateFavoriteStores < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_stores do |t|

      t.timestamps
    end
  end
end

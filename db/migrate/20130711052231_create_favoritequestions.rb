class CreateFavoritequestions < ActiveRecord::Migration
  def change
    create_table :favoritequestions do |t|
      t.string :background
      t.string :questionword
      t.string :specificdunno

      t.timestamps
    end
  end
end

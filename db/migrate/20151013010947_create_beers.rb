class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name, null: false
      t.string :brewery, null: false
      t.text :description
      t.decimal :abv, precision: 2, scale: 4

      t.timestamps
    end
  end
end

class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.belongs_to :user
      t.belongs_to :beer
      t.integer :value
      t.timestamps
    end

    add_index :ratings, :user_id
    add_index :ratings, :beer_id
  end
end

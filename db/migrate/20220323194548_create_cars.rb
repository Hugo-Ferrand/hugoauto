class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :description
      t.integer :price
      t.string :brand
      t.string :street
      t.string :city
      t.string :country
      t.integer :rating
      t.references :user, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end

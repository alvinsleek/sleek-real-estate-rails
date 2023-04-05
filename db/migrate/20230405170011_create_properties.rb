class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :image
      t.string :location
      t.string :price
      t.string :type_of_house
      t.string :category

      t.timestamps
    end
  end
end

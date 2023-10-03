class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.datetime :last_watering
      t.string :plant_type

      t.timestamps
    end
  end
end

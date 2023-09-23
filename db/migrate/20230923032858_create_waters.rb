class CreateWaters < ActiveRecord::Migration[7.0]
  def change
    create_table :waters do |t|

      t.timestamps
    end
  end
end

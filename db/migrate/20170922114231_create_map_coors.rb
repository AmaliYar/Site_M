class CreateMapCoors < ActiveRecord::Migration[5.1]
  def change
    create_table :map_coors do |t|
      t.string :name
      t.string :coords

      t.timestamps
    end
  end
end

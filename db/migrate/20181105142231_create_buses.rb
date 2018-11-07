class CreateBuses < ActiveRecord::Migration[5.2]
  def change
    create_table :buses do |t|
      t.string :no_bus
      t.string :img_bus
      t.integer :id_jenis
      t.integer :id_bangku
      t.text :fasilitas

      t.timestamps
    end
  end
end

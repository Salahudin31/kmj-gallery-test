class CreateSupirs < ActiveRecord::Migration[5.2]
  def change
    create_table :supirs do |t|
      t.string :first_name
      t.string :last_name
      t.string :nick_name
      t.integer :telepon
      t.text :alamat
      t.date :birth_date

      t.timestamps
    end
  end
end

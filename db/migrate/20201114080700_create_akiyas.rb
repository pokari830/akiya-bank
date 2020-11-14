class CreateAkiyas < ActiveRecord::Migration[5.0]
  def change
    create_table :akiyas do |t|
      t.string :address,     null: false
      t.string :image,       null: false
      t.integer :price,      null: false
      t.string :place,       null: false
      t.timestamps
    end
    add_index :akiyas, :address, unique: true
  end
end

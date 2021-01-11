class RemovePlaceFromAkiyas < ActiveRecord::Migration[5.0]
  def change
    remove_column :akiyas, :place, :string
    remove_column :akiyas, :price, :integer
  end
end

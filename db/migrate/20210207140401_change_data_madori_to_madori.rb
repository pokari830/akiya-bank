class ChangeDataMadoriToMadori < ActiveRecord::Migration[5.0]
  def change
    change_column :madoris, :madori, :string, null: false
  end
end

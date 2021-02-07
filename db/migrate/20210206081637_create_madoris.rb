class CreateMadoris < ActiveRecord::Migration[5.0]
  def change
    create_table :madoris do |t|
      t.string :madori, index: true, null: false

      t.timestamps
    end
  end
end

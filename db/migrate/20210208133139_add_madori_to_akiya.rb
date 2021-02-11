class AddMadoriToAkiya < ActiveRecord::Migration[5.0]
  def change
    add_reference :akiyas, :madori, foriegn_key: true
  end
end

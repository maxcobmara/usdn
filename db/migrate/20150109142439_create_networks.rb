class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.string :name
      t.string :description
      t.string :ip_range

      t.timestamps null: false
    end
  end
end

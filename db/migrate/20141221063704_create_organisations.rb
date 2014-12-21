class CreateOrganisations < ActiveRecord::Migration
  def change
    create_table :organisations do |t|
      t.string :shortname
      t.string :name
      t.string :description
      t.integer :domain_type_id
      t.integer :sub_domain_type_id

      t.timestamps null: false
    end
  end
end

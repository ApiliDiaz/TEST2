class CreateManagements < ActiveRecord::Migration[5.2]
  def change
    create_table :managements do |t|
      t.string :sigla
      t.integer :vicepresidency_id

      t.timestamps
    end
  end
end

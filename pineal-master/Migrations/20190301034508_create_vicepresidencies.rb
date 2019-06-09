class CreateVicepresidencies < ActiveRecord::Migration[5.2]
  def change
    create_table :vicepresidencies do |t|
      t.string :sigla

      t.timestamps
    end
  end
end

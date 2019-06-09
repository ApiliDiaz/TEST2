class CreatePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :positions do |t|
      t.string :nombre
      t.integer :vacantes
      t.string :fip
      t.string :rol
      t.string :contrato
      t.integer :superintendence_id

      t.timestamps
    end
  end
end

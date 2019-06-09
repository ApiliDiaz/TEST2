class CreateContests < ActiveRecord::Migration[5.2]
  def change
    create_table :contests do |t|
      t.integer :dias
      t.date :f_creacion
      t.date :f_apertura
      t.date :f_aprobacion
      t.date :f_ingreso
      t.string :comentario
      t.string :status
      t.integer :position_id

      t.timestamps
    end
  end
end

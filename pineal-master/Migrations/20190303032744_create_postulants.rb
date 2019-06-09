class CreatePostulants < ActiveRecord::Migration[5.2]
  def change
    create_table :postulants do |t|
      t.string :apto
      t.string :turno
      t.string :panel
      t.date :f_panel
      t.string :psicolaboral
      t.date :f_psicolaboral
      t.string :preocupacional
      t.date :f_preocupacional
      t.string :ajusta_renta
      t.integer :r_esperada
      t.string :observaciones
      t.string :pasos_seguir
      t.string :nombre
      t.string :residencia
      t.string :ex_empleador
      t.string :ex_cargo
      t.integer :origin_id
      t.integer :position_id

      t.timestamps
    end
  end
end

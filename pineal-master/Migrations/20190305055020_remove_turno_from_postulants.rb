class RemoveTurnoFromPostulants < ActiveRecord::Migration[5.2]
  def change
    remove_column :postulants, :turno, :string
  end
end

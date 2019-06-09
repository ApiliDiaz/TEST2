class AddTurnoToPositions < ActiveRecord::Migration[5.2]
  def change
    add_column :positions, :turno, :string
  end
end

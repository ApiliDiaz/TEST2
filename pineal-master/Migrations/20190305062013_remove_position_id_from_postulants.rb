class RemovePositionIdFromPostulants < ActiveRecord::Migration[5.2]
  def change
    remove_column :postulants, :position_id, :integer
  end
end

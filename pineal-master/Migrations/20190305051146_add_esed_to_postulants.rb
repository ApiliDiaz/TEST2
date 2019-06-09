class AddEsedToPostulants < ActiveRecord::Migration[5.2]
  def change
    add_column :postulants, :esed, :string
  end
end

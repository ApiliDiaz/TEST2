class AddContestIdToPostulants < ActiveRecord::Migration[5.2]
  def change
    add_column :postulants, :contest_id, :integer
  end
end

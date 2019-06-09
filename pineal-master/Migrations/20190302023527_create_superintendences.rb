class CreateSuperintendences < ActiveRecord::Migration[5.2]
  def change
    create_table :superintendences do |t|
      t.string :nombre
      t.integer :management_id

      t.timestamps
    end
  end
end

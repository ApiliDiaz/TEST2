class CreateOrigins < ActiveRecord::Migration[5.2]
  def change
    create_table :origins do |t|
      t.string :tipo

      t.timestamps
    end
  end
end

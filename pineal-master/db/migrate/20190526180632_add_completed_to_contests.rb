class AddCompletedToContests < ActiveRecord::Migration[5.2]
  def change
    add_column :contests, :completed, :int
  end
end

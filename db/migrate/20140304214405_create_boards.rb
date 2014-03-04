class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.references  :event
      t.string      :name
      t.text        :tweet

      t.timestamps
    end
  end

  def down
    drop_table :boards
  end
end

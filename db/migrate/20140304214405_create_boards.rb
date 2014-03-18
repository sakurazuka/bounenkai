class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.references  :event
      t.string      :name
      t.text        :tweet

      t.datetime    :deleted_at
      t.timestamps
    end
    add_index :boards, :deleted_at
  end

  def down
    drop_table :boards
  end
end

class CreateMembers < ActiveRecord::Migration
  def up
    create_table :members do |t|
      t.references  :event
      t.string      :name
      t.integer     :password

      t.datetime    :deleted_at
      t.timestamps
    end
    add_index :members, :deleted_at
  end

  def down
    drop_table :members
  end
end

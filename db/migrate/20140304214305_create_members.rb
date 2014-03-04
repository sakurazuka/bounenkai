class CreateMembers < ActiveRecord::Migration
  def up
    create_table :members do |t|
      t.references  :event
      t.string      :name
      t.integer     :password

      t.timestamps
    end
  end

  def down
    drop_table :members
  end
end

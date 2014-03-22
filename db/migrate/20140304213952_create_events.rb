class CreateEvents < ActiveRecord::Migration
  def up
    create_table :events do |t|
      t.string   :name
      t.text     :detail
      t.date     :close_date
      t.string   :planner
      t.integer  :password
      t.integer  :due_date_id
      t.integer  :due_place_id

      t.datetime :deleted_at
      t.timestamps
    end
    add_index :events, :deleted_at
  end

  def down
    drop_table :events
  end
end

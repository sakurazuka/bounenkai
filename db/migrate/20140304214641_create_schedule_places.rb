class CreateSchedulePlaces < ActiveRecord::Migration
  def up
    create_table :schedule_places do |t|
      t.references  :event
      t.string      :name
      t.string      :address
      t.integer     :price

      t.datetime    :deleted_at
      t.timestamps
    end
    add_index :schedule_places, :deleted_at
  end

  def down
    drop_table :schedule_places
  end
end

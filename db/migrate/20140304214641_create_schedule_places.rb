class CreateSchedulePlaces < ActiveRecord::Migration
  def up
    create_table :schedule_places do |t|
      t.references  :event
      t.string      :name
      t.string      :address
      t.integer     :price

      t.timestamps
    end
  end

  def down
    drop_table :schedule_places
  end
end

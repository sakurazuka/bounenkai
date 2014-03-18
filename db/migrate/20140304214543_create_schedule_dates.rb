class CreateScheduleDates < ActiveRecord::Migration
  def up
    create_table :schedule_dates do |t|
      t.references  :event
      t.date        :date

      t.datetime    :deleted_at
      t.timestamps
    end
    add_index :schedule_dates, :deleted_at
  end

  def down
    drop_table :schedule_dates
  end
end

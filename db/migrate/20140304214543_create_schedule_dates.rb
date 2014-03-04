class CreateScheduleDates < ActiveRecord::Migration
  def up
    create_table :schedule_dates do |t|
      t.references  :event
      t.date        :date

      t.timestamps
    end
  end

  def down
    drop_table :schedule_dates
  end
end

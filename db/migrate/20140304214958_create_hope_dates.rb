class CreateHopeDates < ActiveRecord::Migration
  def up
    create_table :hope_dates do |t|
      t.references  :member
      t.references  :schedule_date

      t.timestamps
    end
  end

  def down
    drop_table :hope_dates
  end
end

class CreateHopeDates < ActiveRecord::Migration
  def up
    create_table :hope_dates do |t|
      t.references  :member
      t.references  :schedule_date

      t.datetime    :deleted_at
      t.timestamps
    end
    add_index :hope_dates, :deleted_at
  end

  def down
    drop_table :hope_dates
  end
end

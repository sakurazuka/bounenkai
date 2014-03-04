class CreateHopePlaces < ActiveRecord::Migration
  def change
    create_table :hope_places do |t|
      t.references  :member
      t.references  :schedule_place

      t.timestamps
    end
  end

  def down
    drop_table :hope_places
  end
end

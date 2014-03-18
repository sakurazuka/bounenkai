class CreateHopePlaces < ActiveRecord::Migration
  def change
    create_table :hope_places do |t|
      t.references  :member
      t.references  :schedule_place

      t.datetime    :deleted_at
      t.timestamps
    end
    add_index :hope_places, :deleted_at
  end

  def down
    drop_table :hope_places
  end
end

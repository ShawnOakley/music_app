class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title, null: false
      t.integer :album_id, null: false
      t.text :lyrics, null: false
      t.string :regular_track_status

      t.timestamps
    end

    add_index :tracks, :title
  end
end

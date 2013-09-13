class Notes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :comment, null: false
      t.integer :track_id, null:false

      t.timestamps
    end

    add_index :notes, :track_id
  end

end

class AddUserToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :user_email, :string
    add_index :notes, :user_email
  end
end

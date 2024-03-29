class Users < ActiveRecord::Migration
  def change
  create_table :users do |t|
    t.string   :user_email,       :null => false
    t.string   :password_digest, :null => false
    t.string   :session_token,   :null => false
    t.boolean :admin_status
    t.timestamps

    end
  end
end

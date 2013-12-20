class CreateLinkTagUsers < ActiveRecord::Migration
  def change
    create_table :link_tag_users, :options => 'DEFAULT CHARSET=utf8'  do |t|
      t.integer :user_id, default: 0 , null: false 
      t.integer :tag_id,  default: 0 , null: false
      t.integer :ifagree, default: 0 , null: false

      t.timestamps
    end
  end
end
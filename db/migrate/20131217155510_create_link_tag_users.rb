class CreateLinkTagUsers < ActiveRecord::Migration
  def change
    create_table :link_tag_users, :options => 'DEFAULT CHARSET=utf8'  do |t|
      t.integer :user_id,        default: 0 , null: false 
      t.integer :tag_id,         default: 0 , null: false
      t.integer :location,       default: 0 , null: false
      t.integer :like,           default: 0 , null: false
      t.integer :publish_status, default: 0 , null: false # want to log user history of deleted tag

      t.timestamps
    end
  end
end

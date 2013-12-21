class CreateLinkSiteUsers < ActiveRecord::Migration
  def change
    create_table :link_site_users, :options => 'DEFAULT CHARSET=utf8' do |t|
      t.integer :user_id,        default: 0 , null: false
      t.integer :site_id,        default: 0 , null: false
      t.integer :location,       default: 0 , null: false
      t.integer :like,           default: 0 , null: false
      t.integer :publish_status, default: 0 , null: false

      t.timestamps
    end
  end
end

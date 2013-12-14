class CreateLinkTagSites < ActiveRecord::Migration
  def change
    create_table :link_tag_sites, :options => 'DEFAULT CHARSET=utf8' do |t|
      t.integer :tag_id,  default: 0 , null: false
      t.integer :site_id, default: 0 , null: false
      t.integer :rank,    default: 0 , null: false

      t.timestamps
    end
  end
end

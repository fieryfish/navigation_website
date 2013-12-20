class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites, :options => 'DEFAULT CHARSET=utf8' do |t|
      t.string  :name_chn,        default: '', null: false
      t.string  :name_eng,        default: '', null: false
      t.string  :url,             default: '', null: false
      t.integer :publish_status,  default: 0 , null: false
      t.string  :seo_name,        default: '', null: false
      t.string  :page_title,      default: '', null: false
      t.string  :page_keyowrds,   default: '', null: false
      t.text    :page_description
      t.string  :phone,           default: '', null: false
      t.integer :location,        default: 0 , null: false
      t.decimal :score,           default: 0 , null: false

      t.timestamps
    end
  end
end

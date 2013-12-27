class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites, :options => 'DEFAULT CHARSET=utf8' do |t|
      t.string  :name_chn,        default: '', null: false
      t.string  :name_eng,        default: '', null: false
      t.string  :url,             default: '', null: false
      t.integer :publish_status,  default: 0 , null: false
      t.string  :seo_name,        default: '', null: false
      t.text    :description
      t.decimal :added,           default: 0 , null: false #added by user
      t.decimal :lang_type,       default: 0 , null: false #language type 0 for chn, 1 for eng, 2 for forbid in china
      t.timestamps
    end
  end
end

class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags, :options => 'DEFAULT CHARSET=utf8' do |t|
      t.string  :name,       default: '', null: false
      t.integer :sub_tag_id, default: 0 , null: false

      t.timestamps
    end
  end
end

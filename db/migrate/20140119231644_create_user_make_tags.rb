class CreateUserMakeTags < ActiveRecord::Migration
  def change
    create_table :user_make_tags, :options => 'DEFAULT CHARSET=utf8'  do |t|
      t.integer :user_id
      t.integer :tag_id

      t.timestamps
    end
  end
end

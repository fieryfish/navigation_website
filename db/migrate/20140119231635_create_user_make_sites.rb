class CreateUserMakeSites < ActiveRecord::Migration
  def change
    create_table :user_make_sites, :options => 'DEFAULT CHARSET=utf8'  do |t|
      t.integer :user_id
      t.integer :site_id

      t.timestamps
    end
  end
end

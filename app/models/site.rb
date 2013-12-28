class Site < ActiveRecord::Base
  has_many  :link_tag_sites
  has_many  :tags, through: :link_tag_sites

  has_many  :link_site_users
  has_many  :users, through: :link_site_users

  validates :url, uniqueness: true
  searchable do
    text :name_chn, :name_eng
  end
end

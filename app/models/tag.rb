class Tag < ActiveRecord::Base
  has_many :link_tag_sites
  has_many :sites, through: :link_tag_sites

  has_many :link_tag_users
  has_many :users, through: :link_tag_users

  validates :name, uniqueness: true
  searchable do
    text :name
  end
end

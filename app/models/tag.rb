class Tag < ActiveRecord::Base
  has_many :link_tag_sites
  has_many :sites, through: :link_tag_sites
end

class Site < ActiveRecord::Base
  has_many :link_tag_sites
  has_many :tags, through: :link_tag_sites
end

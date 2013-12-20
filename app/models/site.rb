class Site < ActiveRecord::Base
  has_many :link_tag_sites
  has_many :tags, through: :link_tag_sites
  searchable do
    text :name_chn, :name_eng
  end
end

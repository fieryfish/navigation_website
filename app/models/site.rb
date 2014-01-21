class Site < ActiveRecord::Base
  has_many  :link_tag_sites
  has_many  :tags, through: :link_tag_sites

  has_many  :link_site_users
  has_many  :users, through: :link_site_users

  validates :url, uniqueness: true
  after_create :add_name_origin_field
  searchable do
    text :name, :name_eng, :url
  end

  def add_name_origin_field             #name_origin should be downcase
    if self.name_origin.blank?
      self.name_origin = name_eng.to_s.strip.downcase
      self.save
    end
  end
end

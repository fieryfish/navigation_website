class LinkTagSite < ActiveRecord::Base
  belongs_to :tag
  belongs_to :site
end

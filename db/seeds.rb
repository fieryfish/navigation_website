# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Tag.create([{name: '军事'} ,  {name: '娱乐'} ,  {name: '体育'}])

tags = Tag.all
tags.each do |tag|
  10.times.each do |num|
    site = Site.create(name_chn: "中文名_#{num}",
                name_eng: "英文名_#{num}",
                url: "www.url_#{num}.com")

    LinkTagSite.create(tag_id: tag.id,
                       site_id: site.id)
  end
end

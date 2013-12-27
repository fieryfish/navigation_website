# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#
#
#   All the websites are for the uk only 
#
Tag.create([{name: '热门'}, {name: '门户'}, {name: '英国门户'},{name: '英国华人门户'}, {name: '新闻'}, {name: '视频'},
            {name: '社交'}, {name: '中国购物'}, {name: '英国购物'}, {name: '电影'},
            {name: 'ruby on rails'}, {name: '程序员'}])

remen    = Tag.where("name = '热门'").first
menhu    = Tag.where("name = '门户'").first
ukmenhu  = Tag.where("name = '英国门户'").first
ukcnmenhu= Tag.where("name = '英国华人门户'").first
xinwen   = Tag.where("name = '新闻'").first
shipin   = Tag.where("name = '视频'").first
shejiao  = Tag.where("name = '社交'").first
gouwu_cn = Tag.where("name = '中国购物'").first
gouwu_uk = Tag.where("name = '英国购物'").first
dianying = Tag.where("name = '电影'").first
ruby_rails = Tag.where("name = 'ruby on rails'").first
coder      = Tag.where("name = '程序员'").first


current_sites=\
Site.create([{name_chn: "新浪",   name_eng: "sina",  url: "www.sina.com.cn"},
             {name_chn: "搜狐",   name_eng: "sohu",  url: "www.sohu.com"},
             {name_chn: "网易",   name_eng: "163",   url: "www.163.com"},
             {name_chn: "腾讯",   name_eng: "qq",    url: "www.qq.com"},
             {name_chn: "凤凰网", name_eng: "ifeng", url: "www.ifeng.com"},
             {name_chn: "人民网", name_eng: "people",url: "www.people.com.cn"}


])

current_sites.each_with_index do |site, index|
  LinkTagSite.create({tag_id:  menhu.id,
                      site_id: site.id,
                      rank: index+1
  })
end

# ukmenhu
current_sites=\
Site.create([{name_chn: "yahoo",     name_eng: "yahoo",      url: "uk.yahoo.com",  lang_type: 1},
             {name_chn: "BBC",       name_eng: "BBC",        url: "www.bbc.co.uk", lang_type: 1},
             {name_chn: "CNN",       name_eng: "CNN",        url: "www.cnn.com",   lang_type: 1},
             {name_chn: "telegraph", name_eng: "CNN",        url: "telegraph.co.uk",lang_type: 1},
             {name_chn: "dailymail", name_eng: "dailymail",  url: "dailymail.co.uk",lang_type: 1},
             {name_chn: "msn",       name_eng: "MSN",        url: "uk.msn.com",    lang_type: 1}
])

current_sites.each_with_index do |site, index|
  LinkTagSite.create({tag_id:  ukmenhu.id,
                      site_id: site.id,
                      rank: index+1
  })
end

# ukcnmenhu
current_sites=\
Site.create([{name_chn: "BBC中文网", name_eng: "",    url: "www.bbc.co.uk/zhongwen/simp"},
             {name_chn: "红领巾",    name_eng: "BBC", url: "www.honglingjin.co.uk"},
])

current_sites.each_with_index do |site, index|
  LinkTagSite.create({tag_id:  ukcnmenhu.id,
                      site_id: site.id,
                      rank: index+1
  })
end

# xinwen
current_sites=\
Site.create([{name_chn: "人民网",   url: "people.com.cn"},
             {name_chn: "新华网",   url: "xinhuanet.com"},
             {name_chn: "光明网",   url: "gmw.cn"},
             {name_chn: "财经网",   url: "caijing.com.cn"},
             {name_chn: "BBC",       name_eng: "BBC",        url: "www.bbc.co.uk", lang_type: 1},
             {name_chn: "yahoo.com", name_eng: "yahoo.com",  url: "yahoo.com",     lang_type: 1}
])

current_sites.each_with_index do |site, index|
  LinkTagSite.create({tag_id:  xinwen.id,
                      site_id: site.id,
                      rank: index+1
  })
end

# shipin
current_sites=\
Site.create([{name_chn: "YouTube", name_eng: "youtube", url: "www.youtube.com", lang_type: 1},
             {name_chn: "优酷网",  name_eng: "youku",   url: "www.youku.com"},
             {name_chn: "土豆网",  name_eng: "tudou",   url: "www.tudou.com"}
])

current_sites.each_with_index do |site, index|
  LinkTagSite.create({tag_id:  shipin.id,
                      site_id: site.id,
                      rank: index+1
  })
end

#shejiao 
current_sites=\
Site.create([{name_chn: "Facebook(脸书)", name_eng: "Facebook",    url: "www.facebook.com", lang_type: 1},
             {name_chn: "新浪微博",       name_eng: "weibo",       url: "weibo"},
             {name_chn: "LinkedIn",       name_eng: "linkedin",    url: "www.linkedin.com", lang_type: 1},
             {name_chn: "Twitter(推特)",  name_eng: "twitter",     url: "www.twitter.com",  lang_type: 1},
             {name_chn: "人人",           name_eng: "renren",      url: "www.renren.com"},
             {name_chn: "豆瓣",           name_eng: "douban",      url: "www.douban.com"}
])

current_sites.each_with_index do |site, index|
  LinkTagSite.create({tag_id:  shejiao.id,
                      site_id: site.id,
                      rank: index+1
  })
end

#gouwu_cn
current_sites=\
Site.create([{name_chn: "淘宝",   name_eng: "taobao",  url: "www.taobao.com"},
             {name_chn: "亚马逊", name_eng: "amazon",  url: "z.cn"},
             {name_chn: "京东",   name_eng: "jingdong",url: "www.jd.com"},
             {name_chn: "天猫",   name_eng: "tmall",   url: "www.tmall.com"},
             {name_chn: "乐峰网", name_eng: "lefeng",  url: "www.lefeng.com"}
])

current_sites.each_with_index do |site, index|
  LinkTagSite.create({tag_id:  gouwu_cn.id,
                      site_id: site.id,
                      rank: index+1
  })
end

#gouwu_uk
current_sites=\
Site.create([{name_chn: "Amazon", name_eng: "amazon", url: "www.amazon.co.uk", lang_type: 1},
             {name_chn: "ebay",   name_eng: "ebay",   url: "www.ebay.co.uk",   lang_type: 1},
             {name_chn: "优衣库", name_eng: "uniqlo", url: "www.uniqlo.com/uk",lang_type: 1},
             {name_chn: "Argos",  name_eng: "Argos",  url: "www.argos.co.uk",  lang_type: 1},
             {name_chn: "Asos",   name_eng: "asos",   url: "www.asos.com/men", lang_type: 1}
])

current_sites.each_with_index do |site, index|
  LinkTagSite.create({tag_id:  gouwu_uk.id,
                      site_id: site.id,
                      rank: index+1
  })
end

#dianying
current_sites=\
Site.create([{name_chn: "imdb",     name_eng: "imdb",     url: "www.imdb.com",     lang_type: 1},
             {name_chn: "雅虎电影", name_eng: "",         url: "movies.yahoo.com", lang_type: 1},
             {name_chn: "AllMovie", name_eng: "AllMovie", url: "www.allmovie.com", lang_type: 1},
             {name_chn: "豆瓣电影", name_eng: "",         url: "movie.douban.com"}
])

current_sites.each_with_index do |site, index|
  LinkTagSite.create({tag_id:  dianying.id,
                      site_id: site.id,
                      rank: index+1
  })
end


# ruby_rails
current_sites=\
Site.create(
            [{name_chn: "Ruby-China",    name_eng: "RubyChina", url: "ruby-china.org"},
             {name_chn: "Rails guide",   name_eng: "",          url: "guides.rubyonrails.org", lang_type: 1},
             {name_chn: "Rvm",           name_eng: "rvm",       url: "rvm.io",                 lang_type: 1},
             {name_chn: "RubyOnRails",   name_eng: "Ror",       url: "rubyonrails.org",        lang_type: 1},
             {name_chn: "RailsTutorial", name_eng: "rails",     url: "ruby.railstutorial.org", lang_type: 1}
])

current_sites.each_with_index do |site, index|
  LinkTagSite.create({tag_id:  ruby_rails.id,
                      site_id: site.id,
                      rank: index+1
  })
end

# coder
current_sites=\
Site.create([{name_chn: "Csdn",          name_eng: "Csdn",          url: "www.csdn.net"},
             {name_chn: "Iteye",         name_eng: "Iteye",         url: "www.iteye.com"},
             {name_chn: "StackOverFlow", name_eng: "StackOverFlow", url: "stackoverflow.com", lang_type: 1},
             {name_chn: "quora",         name_eng: "quora",         url: "quora.com",         lang_type: 1},
             {name_chn: "知乎",          name_eng: "zhihu",         url: "zhihu.com"},
             {name_chn: "reddit",        name_eng: "zhihu",         url: "www.reddit.com"}
])

current_sites.each_with_index do |site, index|
  LinkTagSite.create({tag_id:  coder.id,
                      site_id: site.id,
                      rank: index+1
  })
end

#remen
current_sites=\
Site.create([{name_chn: "google", name_eng: "",  url: "google.co.uk"},
             {name_chn: "BBC天气",         name_eng: "",  url: "www.bbc.co.uk/weather"},
             {name_chn: "BBC中文网",       name_eng: "",  url: "www.bbc.co.uk/zhongwen/simp"},
             {name_chn: "YouTube",         name_eng: "youtube",     url: "www.youtube.com", lang_type: 1},
             {name_chn: "新浪微博",        name_eng: "weibo",       url: "weibo"},
             {name_chn: "Facebook(脸书)",  name_eng: "Facebook",    url: "www.facebook.com", lang_type: 1},
             {name_chn: "Instagram",       name_eng: "",            url: "www.instagram.com", lang_type: 1},
             {name_chn: "Twitter(推特)",   name_eng: "twitter",     url: "www.twitter.com",  lang_type: 1},
             {name_chn: "Amazon",          name_eng: "amazon",      url: "www.amazon.co.uk", lang_type: 1},
             {name_chn: "tumblr",          name_eng: "tumblr",      url: "www.tumblr.com",   lang_type: 1},
             {name_chn: "必应",            name_eng: "bing",        url: "www.bing.com", lang_type: 1},
             {name_chn: "NationalRail",    name_eng: "",            url: "www.nationalrail.co.uk", lang_type: 1}
])

current_sites.each_with_index do |site, index|
  LinkTagSite.create({tag_id:  remen.id,
                      site_id: site.id,
                      rank: index+1
  })
end
#tags = Tag.all

#tags.each do |tag|
  #10.times.each do |num|
    #site = Site.create(name_chn: "中文名_#{num}",
                #name_eng: "英文名_#{num}",
                #url: "www.url_#{num}.com")

    #LinkTagSite.create(tag_id: tag.id,
                       #site_id: site.id)
  #end
#end

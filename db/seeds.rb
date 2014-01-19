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
def create_link_tag_site(site_names, tag)
  current_sites=\
    Site.find_all_by_name(site_names)

  current_sites.each_with_index do |site, index|
    LinkTagSite.create({tag_id:  tag.id,
                        site_id: site.id,
                        rank: index+1
    })
  end
end

Tag.create([{name: '热门'}, {name: '门户'}, {name: '英国门户'},{name: '英国华人门户'}, {name: '新闻'}, {name: '视频'},
            {name: '社交'}, {name: '中国购物'}, {name: '英国购物'}, {name: '电影'},
            {name: 'ruby on rails'}, {name: '程序员'}])

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
remen      = Tag.where("name = '热门'").first

#menhu
Site.create([{name: "新浪",   name_eng: "sina",  name_origin: "sina",  url: "www.sina.com.cn"},
             {name: "搜狐",   name_eng: "sohu",  name_origin: "sohu",  url: "www.sohu.com"},
             {name: "网易",   name_eng: "163",   name_origin: "163",   url: "www.163.com"},
             {name: "腾讯",   name_eng: "qq",    name_origin: "qq",    url: "www.qq.com"},
             {name: "凤凰网", name_eng: "ifeng", name_origin: "ifeng", url: "www.ifeng.com"},
             {name: "人民网", name_eng: "people",name_origin: "people",url: "www.people.com.cn"},

             #ukmenhu
             {name: "yahoo",     name_eng: "yahoo",      name_origin: "yahoo",     url: "uk.yahoo.com",  lang_type: 1},
             {name: "BBC",       name_eng: "BBC",        name_origin: "BBC",       url: "www.bbc.co.uk", lang_type: 1},
             {name: "CNN",       name_eng: "CNN",        name_origin: "CNN",       url: "www.cnn.com",   lang_type: 1},
             {name: "telegraph", name_eng: "telegraph",  name_origin: "telegraph", url: "telegraph.co.uk",lang_type: 1},
             {name: "dailymail", name_eng: "dailymail",  name_origin: "dailymail", url: "dailymail.co.uk",lang_type: 1},
             {name: "msn",       name_eng: "MSN",        name_origin: "MSN",       url: "uk.msn.com",    lang_type: 1},

             #ukcnmenhu
             {name: "BBC中文网", name_eng: "BBCChina",   url: "www.bbc.co.uk/zhongwen/simp"},
             {name: "红领巾",    name_eng: "honglingjin", url: "www.honglingjin.co.uk"},
             {name: "倍可亲",    name_eng: "beikeqin",    url: "www.backchina.com/portal.php"},
             {name: "博讯网",    name_eng: "boxun",       url: "www.peacehall.com"},

             #xinwen
             {name: "人民网",   name_eng: "people",  url: "people.com.cn"},
             {name: "新华网",   name_eng: "xinhua",  url: "xinhuanet.com"},
             {name: "光明网",   name_eng: "gmw",     url: "gmw.cn"},
             {name: "财经网",   name_eng: "caijing", url: "caijing.com.cn"},
             {name: "BBC",      name_eng: "BBC",     url: "www.bbc.co.uk", lang_type: 1},
             {name: "yahoo",    name_eng: "yahoo",   url: "uk.yahoo.com",  lang_type: 1},

             #shipin
             {name: "YouTube", name_eng: "youtube", url: "www.youtube.com", lang_type: 1},
             {name: "优酷网",  name_eng: "youku",   url: "www.youku.com"},
             {name: "土豆网",  name_eng: "tudou",   url: "www.tudou.com"},

             #shejiao
             {name: "Facebook", name_eng: "facebook",    url: "www.facebook.com", lang_type: 1},
             {name: "新浪微博",       name_eng: "weibo",       url: "weibo"},
             {name: "LinkedIn",       name_eng: "linkedin",    url: "www.linkedin.com", lang_type: 1},
             {name: "Twitter",  name_eng: "twitter",     url: "www.twitter.com",  lang_type: 1},
             {name: "人人",           name_eng: "renren",      url: "www.renren.com"},
             {name: "豆瓣",           name_eng: "douban",      url: "www.douban.com"},

             #gouwu_cn
             {name: "淘宝",         name_eng: "taobao",  url: "www.taobao.com"},
             {name: "亚马逊(中国)", name_eng: "amazon",  url: "z.cn"},
             {name: "京东",         name_eng: "jingdong",url: "www.jd.com"},
             {name: "天猫",         name_eng: "tmall",   url: "www.tmall.com"},
             {name: "乐峰网",       name_eng: "lefeng",  url: "www.lefeng.com"},

             #gouwu_uk
             {name: "Amazon(uk)", name_eng: "amazon(uk)",  name_origin: "amazon",url: "www.amazon.co.uk", lang_type: 1},
             {name: "ebay(uk)",   name_eng: "ebay(uk)",    name_origin: "ebay",  url: "www.ebay.co.uk",   lang_type: 1},
             {name: "优衣库(uk)", name_eng: "uniqlo(uk)",  name_origin: "uniqlo",url: "www.uniqlo.com/uk",lang_type: 1},
             {name: "Argos",      name_eng: "Argos",      url: "www.argos.co.uk",  lang_type: 1},
             {name: "Asos",       name_eng: "asos",       url: "www.asos.com/men", lang_type: 1},

             #dianying
             {name: "imdb",     name_eng: "imdb",        url: "www.imdb.com",     lang_type: 1},
             {name: "雅虎电影", name_eng: "yahoo movie", url: "movies.yahoo.com", lang_type: 1},
             {name: "AllMovie", name_eng: "AllMovie",    url: "www.allmovie.com", lang_type: 1},
             {name: "豆瓣电影", name_eng: "douban movie",url: "movie.douban.com"},

             #ror
             {name: "Ruby-China",    name_eng: "RubyChina",     url: "ruby-china.org"},
             {name: "Rails guide",   name_eng: "RailsGuide",    url: "guides.rubyonrails.org", lang_type: 1},
             {name: "Rvm",           name_eng: "rvm",           url: "rvm.io",                 lang_type: 1},
             {name: "RubyOnRails",   name_eng: "RubyOnRails",   url: "rubyonrails.org",        lang_type: 1},
             {name: "RailsTutorial", name_eng: "RailsTutorial", url: "ruby.railstutorial.org", lang_type: 1},

             #coder
             {name: "Csdn",          name_eng: "Csdn",          url: "www.csdn.net"},
             {name: "Iteye",         name_eng: "Iteye",         url: "www.iteye.com"},
             {name: "StackOverFlow", name_eng: "StackOverFlow", url: "stackoverflow.com", lang_type: 1},
             {name: "Quora",         name_eng: "quora",         url: "quora.com",         lang_type: 1},
             {name: "知乎",          name_eng: "zhihu",         url: "zhihu.com"},
             {name: "reddit",        name_eng: "reddit",         url: "www.reddit.com"},

             #remen
             {name: "google",          name_eng: "google",      url: "google.co.uk"},
             {name: "BBC天气",         name_eng: "bbcWeather",  url: "www.bbc.co.uk/weather"},
             {name: "Instagram",       name_eng: "Instagram",   url: "www.instagram.com", lang_type: 1},
             {name: "tumblr",          name_eng: "tumblr",      url: "www.tumblr.com",   lang_type: 1},
             {name: "必应",            name_eng: "bing",        url: "www.bing.com", lang_type: 1},
             {name: "NationalRail",    name_eng: "NationalRail",url: "www.nationalrail.co.uk", lang_type: 1}
])

names = ["新浪","搜狐","网易","腾讯","凤凰网","人民网"]
create_link_tag_site(names, menhu)

names = ["yahoo","BBC","CNN","telegraph","dailymail","msn","YouTube"]
create_link_tag_site(names, ukmenhu)

names = ["BBC中文","红领巾","倍可亲","博讯网"]
create_link_tag_site(names, ukcnmenhu)

names = ["人民网","新华网","光明网","财经网","BBC", "yahoo"]
create_link_tag_site(names, xinwen)

names = ["YouTube","优酷网","土豆网"]
create_link_tag_site(names, shipin)

names = ["Facebook(脸书)","新浪微博","LinkedIn","Twitter(推特)","人人", "豆瓣"]
create_link_tag_site(names, shejiao)

names = ["淘宝","亚马逊(中国)","京东","天猫","乐峰网"]
create_link_tag_site(names, gouwu_cn)

names = ["Amazon(uk)","ebay(uk)","优衣库(uk)","Argos","Asos"]
create_link_tag_site(names, gouwu_uk)

names = ["imdb","雅虎电影","AllMovie","豆瓣电影"]
create_link_tag_site(names, dianying)

names = ["Ruby-China","Rails guide","Rvm","RubyOnRails","RailsTutorial"]
create_link_tag_site(names, ruby_rails)

names = ["Csdn","Iteye","StackOverFlow","Quora","知乎","reddit"]
create_link_tag_site(names, coder)

names = ["google","BBC天气","BBC中文网","YouTube","新浪微博","Facebook(脸书)","Instagram","Twitter(推特)","Amazon(uk)","tumblr","必应","NationalRail"]
create_link_tag_site(names, remen)


#tags = Tag.all

#tags.each do |tag|
  #10.times.each do |num|
    #site = Site.create(name: "中文名_#{num}",
                #name_eng: "英文名_#{num}",
                #url: "www.url_#{num}.com")

    #LinkTagSite.create(tag_id: tag.id,
                       #site_id: site.id)
  #end
#end

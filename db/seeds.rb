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
    Site.find_all_by_name_chn(site_names)

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
Site.create([{name_chn: "新浪",   name_eng: "sina",  url: "www.sina.com.cn"},
             {name_chn: "搜狐",   name_eng: "sohu",  url: "www.sohu.com"},
             {name_chn: "网易",   name_eng: "163",   url: "www.163.com"},
             {name_chn: "腾讯",   name_eng: "qq",    url: "www.qq.com"},
             {name_chn: "凤凰网", name_eng: "ifeng", url: "www.ifeng.com"},
             {name_chn: "人民网", name_eng: "people",url: "www.people.com.cn"},

             #ukmenhu
             {name_chn: "yahoo",     name_eng: "yahoo",      url: "uk.yahoo.com",  lang_type: 1},
             {name_chn: "BBC",       name_eng: "BBC",        url: "www.bbc.co.uk", lang_type: 1},
             {name_chn: "CNN",       name_eng: "CNN",        url: "www.cnn.com",   lang_type: 1},
             {name_chn: "telegraph", name_eng: "CNN",        url: "telegraph.co.uk",lang_type: 1},
             {name_chn: "dailymail", name_eng: "dailymail",  url: "dailymail.co.uk",lang_type: 1},
             {name_chn: "msn",       name_eng: "MSN",        url: "uk.msn.com",    lang_type: 1},

             #ukcnmenhu
             {name_chn: "BBC中文网", name_eng: "",    url: "www.bbc.co.uk/zhongwen/simp"},
             {name_chn: "红领巾",    name_eng: "BBC", url: "www.honglingjin.co.uk"},
             {name_chn: "倍可亲",    url: "www.backchina.com/portal.php"},
             {name_chn: "博讯网",    url: "www.peacehall.com"},

             #xinwen
             {name_chn: "人民网",   url: "people.com.cn"},
             {name_chn: "新华网",   url: "xinhuanet.com"},
             {name_chn: "光明网",   url: "gmw.cn"},
             {name_chn: "财经网",   url: "caijing.com.cn"},
             {name_chn: "BBC",       name_eng: "BBC",    url: "www.bbc.co.uk", lang_type: 1},
             {name_chn: "yahoo",     name_eng: "yahoo",  url: "uk.yahoo.com",  lang_type: 1},

             #shipin
             {name_chn: "YouTube", name_eng: "youtube", url: "www.youtube.com", lang_type: 1},
             {name_chn: "优酷网",  name_eng: "youku",   url: "www.youku.com"},
             {name_chn: "土豆网",  name_eng: "tudou",   url: "www.tudou.com"},

             #shejiao
             {name_chn: "Facebook(脸书)", name_eng: "Facebook",    url: "www.facebook.com", lang_type: 1},
             {name_chn: "新浪微博",       name_eng: "weibo",       url: "weibo"},
             {name_chn: "LinkedIn",       name_eng: "linkedin",    url: "www.linkedin.com", lang_type: 1},
             {name_chn: "Twitter(推特)",  name_eng: "twitter",     url: "www.twitter.com",  lang_type: 1},
             {name_chn: "人人",           name_eng: "renren",      url: "www.renren.com"},
             {name_chn: "豆瓣",           name_eng: "douban",      url: "www.douban.com"},

             #gouwu_cn
             {name_chn: "淘宝",   name_eng: "taobao",  url: "www.taobao.com"},
             {name_chn: "亚马逊(中国)", name_eng: "amazon",  url: "z.cn"},
             {name_chn: "京东",   name_eng: "jingdong",url: "www.jd.com"},
             {name_chn: "天猫",   name_eng: "tmall",   url: "www.tmall.com"},
             {name_chn: "乐峰网", name_eng: "lefeng",  url: "www.lefeng.com"},

             #gouwu_uk
             {name_chn: "Amazon(uk)", name_eng: "amazon", url: "www.amazon.co.uk", lang_type: 1},
             {name_chn: "ebay(uk)",   name_eng: "ebay",   url: "www.ebay.co.uk",   lang_type: 1},
             {name_chn: "优衣库(uk)", name_eng: "uniqlo", url: "www.uniqlo.com/uk",lang_type: 1},
             {name_chn: "Argos",  name_eng: "Argos",  url: "www.argos.co.uk",  lang_type: 1},
             {name_chn: "Asos",   name_eng: "asos",   url: "www.asos.com/men", lang_type: 1},

             #dianying
             {name_chn: "imdb",     name_eng: "imdb",     url: "www.imdb.com",     lang_type: 1},
             {name_chn: "雅虎电影", name_eng: "",         url: "movies.yahoo.com", lang_type: 1},
             {name_chn: "AllMovie", name_eng: "AllMovie", url: "www.allmovie.com", lang_type: 1},
             {name_chn: "豆瓣电影", name_eng: "",         url: "movie.douban.com"},

             #ror
             {name_chn: "Ruby-China",    name_eng: "RubyChina", url: "ruby-china.org"},
             {name_chn: "Rails guide",   name_eng: "",          url: "guides.rubyonrails.org", lang_type: 1},
             {name_chn: "Rvm",           name_eng: "rvm",       url: "rvm.io",                 lang_type: 1},
             {name_chn: "RubyOnRails",   name_eng: "Ror",       url: "rubyonrails.org",        lang_type: 1},
             {name_chn: "RailsTutorial", name_eng: "rails",     url: "ruby.railstutorial.org", lang_type: 1},

             #coder
             {name_chn: "Csdn",          name_eng: "Csdn",          url: "www.csdn.net"},
             {name_chn: "Iteye",         name_eng: "Iteye",         url: "www.iteye.com"},
             {name_chn: "StackOverFlow", name_eng: "StackOverFlow", url: "stackoverflow.com", lang_type: 1},
             {name_chn: "Quora",         name_eng: "quora",         url: "quora.com",         lang_type: 1},
             {name_chn: "知乎",          name_eng: "zhihu",         url: "zhihu.com"},
             {name_chn: "reddit",        name_eng: "zhihu",         url: "www.reddit.com"},

             #remen
             {name_chn: "google",          name_eng: "",  url: "google.co.uk"},
             {name_chn: "BBC天气",         name_eng: "",  url: "www.bbc.co.uk/weather"},
             {name_chn: "BBC中文网",       name_eng: "",  url: "www.bbc.co.uk/zhongwen/simp"},
             {name_chn: "YouTube",         name_eng: "youtube",     url: "www.youtube.com", lang_type: 1},
             {name_chn: "新浪微博",        name_eng: "weibo",       url: "weibo"},
             {name_chn: "Facebook(脸书)",  name_eng: "Facebook",    url: "www.facebook.com", lang_type: 1},
             {name_chn: "Instagram",       name_eng: "",            url: "www.instagram.com", lang_type: 1},
             {name_chn: "Twitter(推特)",   name_eng: "twitter",     url: "www.twitter.com",  lang_type: 1},
             {name_chn: "Amazon(uk)",          name_eng: "amazon",      url: "www.amazon.co.uk", lang_type: 1},
             {name_chn: "tumblr",          name_eng: "tumblr",      url: "www.tumblr.com",   lang_type: 1},
             {name_chn: "必应",            name_eng: "bing",        url: "www.bing.com", lang_type: 1},
             {name_chn: "NationalRail",    name_eng: "",            url: "www.nationalrail.co.uk", lang_type: 1}
])

names = ["新浪","搜狐","网易","腾讯","凤凰网","人民网"]
create_link_tag_site(names, menhu)

names = ["yahoo","BBC","CNN","telegraph","dailymail","msn"]
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
    #site = Site.create(name_chn: "中文名_#{num}",
                #name_eng: "英文名_#{num}",
                #url: "www.url_#{num}.com")

    #LinkTagSite.create(tag_id: tag.id,
                       #site_id: site.id)
  #end
#end

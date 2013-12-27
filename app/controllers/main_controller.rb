class MainController < ApplicationController
  def index
    #@tags = Tag.all
    main_tag   = Tag.first
    @main_sites = main_tag.sites
    @unlogin_tags = Tag.find([3, 4, 5, 6, 7])# ["英国华人门户","英国门户", "新闻", "视频", "社交"]
    if user_signed_in?

    else

    end

    @search = Tag.search do
      fulltext params[:search]
    end

    @tags = @search.results

    @search = Site.search do
      fulltext params[:search]
    end
    @sites = @search.results

    render 'index' 

  end
end

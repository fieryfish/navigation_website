class SearchSuggestionController < ApplicationController
  def index

    if params[:term]
      @search = Tag.search do
        fulltext params[:term]
      end

      @tags = @search.results
      tag_names = @tags[0..2].map(&:name)

      @search = Site.search do
        fulltext params[:term]
      end
      @sites = @search.results
      site_chn_names = @sites[0..6].map(&:name_chn)

      result = tag_names + site_chn_names
    end

    p result
    render :json => result || []
  end

end

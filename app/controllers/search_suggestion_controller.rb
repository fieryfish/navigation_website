class SearchSuggestionController < ApplicationController
  def index
    autocomplete_result = []

    if params[:term]

      @search = Tag.search do
        fulltext params[:term]
      end

      @tags = @search.results
      extracted_tag_names = @tags[0..2].map(&:name)

      @search = Site.search do
        fulltext params[:term]
      end

      @sites = @search.results
      extracted_site_chn_names = @sites[0..6].map(&:name_chn)

      autocomplete_result = extracted_tag_names + extracted_site_chn_names
    end

    render :json => autocomplete_result
  end

end

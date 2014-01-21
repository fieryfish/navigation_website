class SearchSuggestionsController < ApplicationController
  def index
    #render :json => %w[asd foo faa]
    autocomplete_result = []

    if params[:term]

      @search = Tag.search do
        fulltext params[:term]
      end

      @tags = @search.results
      extracted_tag_names = @tags[0..2].map(&:name)
      extracted_tags = @tags[0..2]

      p "@search:#{@search}"
      p "@tags:#{@tags}"

      @search = Site.search do
        fulltext params[:term]
      end

      @sites = @search.results
      p "@search:#{@search}"
      p "@sites+#{@sites}"
      extracted_site_names = @sites[0..6].map(&:name)
      extracted_sites = @sites[0..6]

      #autocomplete_result = extracted_tag_names + extracted_site_names
      autocomplete_result = extracted_tags + extracted_sites
    end
    p 11111111111111111111
    p autocomplete_result

    render :json => autocomplete_result
  end
end

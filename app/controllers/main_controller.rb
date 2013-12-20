class MainController < ApplicationController
  def index
    #@tags = Tag.all
    @search = Tag.search do
      fulltext params[:search]
    end
    @tags = @search.results
    render 'index' 
  end
end

class HomeController < ApplicationController
  def index
    if params[:search]
      @links = Link.search_by_name(params[:search])
      @links_categories = Link.search_by_category(params[:search])
      @links_tags = Link.search_by_tags(params[:search])
      @total =  @links.count + @links_categories.count + @links_tags.count
    end
  end
end

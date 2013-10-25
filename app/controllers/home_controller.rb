class HomeController < ApplicationController
  def index
    if params[:search]
      @links = Link.search_by_name(params[:search])
      @links_categories = Link.search_by_category(params[:search])
      @links_tags = Link.search_by_tags(params[:search])
      @links_all = Link.search_by_all(params[:search])
      @total_name = @links.count
      @total_category = @links_categories.count
      @total_tags = @links_tags.count
      @total =  @links_all.count
    end
  end
end

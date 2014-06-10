class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :define_sidebar

  private

  def define_sidebar
    @homepage = Refinery::Page.find_by_id("1")
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @sidebar_news = Refinery::News::Item.latest(3)
    @sidebar_posts = Refinery::Blog::Post.recent(5)
    @sidebar_categories = Refinery::Blog::Category.all
    @sidebar_tags = Refinery::Blog::Post.tag_counts
  end

end

class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :define_sidebar
  before_filter :define_home_widgets, only: :home

  protected

  def after_sign_in_path_for(resource)
    unless ((refinery_user? && current_refinery_user.has_role?(:superuser)) || (refinery_user? && current_refinery_user.has_role?(:refinery)))
      refinery.profile_members_path
    else
      super
    end
  end
  private

  def define_sidebar
    @homepage = Refinery::Page.find_by_id("1")
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @sidebar_news = Refinery::News::Item.latest(3)
    @sidebar_posts = Refinery::Blog::Post.recent(5)
    @sidebar_categories = Refinery::Blog::Category.all
    @sidebar_tags = Refinery::Blog::Post.tag_counts
  end

  def define_home_widgets
    @home_widgets=@homepage.children if @homepage.children.exists?
  end


end

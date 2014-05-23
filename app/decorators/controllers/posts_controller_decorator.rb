Refinery::Blog::PostsController.class_eval do

  def show
    # @categories = Refinery::Blog::Category.all
  @tags = Refinery::Blog::Category::ActsAsTaggableOn::Tag.all
    end

  end
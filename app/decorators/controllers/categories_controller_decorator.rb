Refinery::Blog::CategoriesController.class_eval do

  def index
    @categories = Refinery::Blog::Category.all
        @tags = Refinery::Blog::Category::ActsAsTaggableOn::Tag.all

  end

  def show
    # @category = Refinery::Blog::Category.find(params[:id])
    #     @posts = @category.posts.live.includes(:comments, :categories).page(params[:page])
    @tags = Refinery::Blog::Category::ActsAsTaggableOn::Tag.all
  end

  end
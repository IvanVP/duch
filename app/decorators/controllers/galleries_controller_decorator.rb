Refinery::Portfolio::GalleriesController.class_eval do

  def index
    @galleries = Refinery::Portfolio::Gallery.roots
    @items = Refinery::Portfolio::Item.root_items
    present(@page)
  end

  def show
    @gallery = Refinery::Portfolio::Gallery.find(params[:id])
    @galleries = @gallery.children
    @items = @gallery.items
    present(@page)

    render :action => "index"
  end

end
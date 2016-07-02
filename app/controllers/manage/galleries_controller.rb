class Manage::GalleriesController < Manage::ApplicationController
  before_filter :find_gallery, only: [:edit, :update, :destroy]

  def index
    @galleries = Gallery.all
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(gallery_params)
    if @gallery.save
      redirect_to manage_galleries_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @gallery.update(gallery_params)
      redirect_to manage_galleries_path
    else
      render :edit
    end
  end

  def destroy
    @gallery.destroy
  end

  private

  def gallery_params
    params.require(:gallery).permit(:title, :page_meta_id, gallery_items_attributes: [:title, :image, :_destroy, :id])
  end

  def find_gallery
    @gallery = Gallery.find(params[:id])
  end
end

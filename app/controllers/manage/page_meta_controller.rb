class Manage::PageMetaController < Manage::ApplicationController
  before_filter :find_page_meta, only: [:edit, :update]

  def index
    @page_metas = PageMeta.all
  end

  def edit
  end

  def update
    @page_meta.update_attributes(meta_params)

    flash[:notice] = 'Изменения сохранены'

    redirect_to manage_root_path
  end

  private

  def find_page_meta
    @page_meta = PageMeta.find(params[:id])
  end

  def meta_params
    params.require(:page_meta).permit(:title, :keywords, :description, :og_title, :og_description, :introduction,
                                      :og_image, :bicycle_discount_amount, :motorbike_discount_amount, :bicycle_price,
                                      :motorbike_price, :end_day, items_attributes: [:title, :image, :_destroy, :id, :description, :hit])
  end
end

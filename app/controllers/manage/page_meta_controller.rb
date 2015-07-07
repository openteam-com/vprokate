class Manage::PageMetaController < Manage::ApplicationController
  def index
    @page_metas = PageMeta.all
  end

  def edit
    @page_meta = PageMeta.find(params[:id])
  end

  def update
    @page_meta = PageMeta.find(params[:id])
    @page_meta.update_attributes(meta_params)
    flash[:notice] = "Изменения сохранены"
    redirect_to manage_root_path
  end

  private
  def meta_params
    params.require(:page_meta).permit(:title, :keywords, :description, :og_title, :og_description, :introduction,
                                      :og_image, :bicycle_discount_amount, :motorbike_discount_amount, :bicycle_price,
                                      :motorbike_price, :end_day)
  end
end

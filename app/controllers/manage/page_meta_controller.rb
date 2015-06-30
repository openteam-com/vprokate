class Manage::PageMetaController < Manage::ApplicationController
  def edit
    @page_meta = PageMeta.find(1)
  end

  def update
    @page_meta = PageMeta.find(params[:id])
    @page_meta.update_attributes(meta_params)
    flash[:notice] = "Изменения сохранены"
    redirect_to manage_root_path
  end

  private
  def meta_params
    params.require(:page_meta).permit(:title, :keywords, :description, :og_title, :og_description, :introduction, :og_image)
  end
end

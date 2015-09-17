class AddSlugToPageMeta < ActiveRecord::Migration
  def change
    add_column :page_meta, :slug, :string

    PageMeta.find(1).update_column(:slug, 'bicycle')
    PageMeta.create(:slug => 'motorbike')
  end
end

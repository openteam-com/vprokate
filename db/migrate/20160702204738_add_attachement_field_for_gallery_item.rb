class AddAttachementFieldForGalleryItem < ActiveRecord::Migration
  def up
    add_attachment :gallery_items, :image
  end

  def down
    remove_attachment :gallery_items, :image
  end
end

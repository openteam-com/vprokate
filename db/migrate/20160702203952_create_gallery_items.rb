class CreateGalleryItems < ActiveRecord::Migration
  def change
    create_table :gallery_items do |t|
      t.string :title
      t.references :gallery
      t.timestamps null: false
    end
  end
end

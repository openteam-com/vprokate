class CreatePageMeta < ActiveRecord::Migration
  def change
    create_table :page_meta do |t|
      t.string :title
      t.text :keywords
      t.text :description
      t.string :og_title
      t.text :og_description
      t.text :introduction
      t.attachment :og_image
    end

    PageMeta.create()
  end
end

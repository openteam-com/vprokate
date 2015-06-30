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
      t.integer :discount_amount, default: 20
      t.integer :bicycle_price, default: 290
      t.integer :motorbike_price, default: 950
      t.date :end_day, default: Time.zone.now + 1.month
    end

    PageMeta.create()
  end
end

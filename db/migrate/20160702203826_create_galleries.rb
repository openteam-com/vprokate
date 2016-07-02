class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.references :page_meta
      t.string :title
      t.timestamps null: false
    end
  end
end

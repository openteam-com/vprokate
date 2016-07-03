class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.attachment :image
      t.belongs_to :page_meta
      t.text :description

      t.timestamps null: false
    end
  end
end

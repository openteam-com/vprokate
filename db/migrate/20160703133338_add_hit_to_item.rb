class AddHitToItem < ActiveRecord::Migration
  def change
    add_column :items, :hit, :boolean
  end
end

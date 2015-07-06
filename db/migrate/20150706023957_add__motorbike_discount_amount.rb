class AddMotorbikeDiscountAmount < ActiveRecord::Migration
  def change
    add_column :page_meta, :motorbike_discount_amount, :integer, :default => 30
    rename_column :page_meta, :discount_amount, :bicycle_discount_amount
  end
end

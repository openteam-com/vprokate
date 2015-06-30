class CreatePhoneOrders < ActiveRecord::Migration
  def change
    create_table :phone_orders do |t|
      t.string :fullname
      t.string :phone
      t.timestamps null: false
    end
  end
end

class AddVehicleToPhoneOrders < ActiveRecord::Migration
  def change
    add_column :phone_orders, :vehicle, :string
  end
end

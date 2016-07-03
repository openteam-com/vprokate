require 'sms'
class PhoneOrdersController < ApplicationController
  def create
    if request.xhr?
      phone_order = PhoneOrder.new(phone_order_params)
      if phone_order.save
        render nothing: true
        sms_text = "Новый заказ звонка от #{phone_order.fullname} на номер #{phone_order.phone}. Транспорт: " + I18n.t("enumerize.vehicle.#{phone_order.vehicle}")
        Sms.new.send(sms_text)
      else
        render nothing: true, status: 500
      end
    end
  end

  private

  def phone_order_params
    params.require(:phone_order).permit(:fullname, :phone, :vehicle)
  end
end

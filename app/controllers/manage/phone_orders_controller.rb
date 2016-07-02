class Manage::PhoneOrdersController < Manage::ApplicationController
  def index
    @phone_orders ||= PhoneOrder.order('created_at desc').page(page)
  end

  private

  def page
    params[:page] || 1
  end
end

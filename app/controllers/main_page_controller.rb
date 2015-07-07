class MainPageController < ApplicationController
  helper_method :prefix

  def index
    @phone_order = PhoneOrder.new
  end

  private
  def prefix
    params[:prefix]
  end
end

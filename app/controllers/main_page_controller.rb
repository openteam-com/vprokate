class MainPageController < ApplicationController
  def index
    @phone_order = PhoneOrder.new
  end
end

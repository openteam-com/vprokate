class Manage::ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout 'manage'
end

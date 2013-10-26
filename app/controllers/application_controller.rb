class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :another_by_method

  private
  def another_by_method
    if current_user
      "admin_layout"
    else
      "application"
    end
  end
end

module Admin

end
class Admin::AdminController < ApplicationController
   before_filter :auth_user
  def auth_user
    redirect_to new_user_session_path unless user_signed_in?
  end
end
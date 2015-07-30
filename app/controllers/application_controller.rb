class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 

  def after_sign_in_path_for(resource)
  	
    if resource.role_id == 1
      rails_admin_path
    else
       # Change profile_path to where you want regular users to go
      root_path
    end
  end
end

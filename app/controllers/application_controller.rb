class ApplicationController < ActionController::Base
  # protect_from_forgery with: :null_session
    
    def after_sign_out_path_for(resource_or_scope)
      "/login"
    end

    def after_sign_in_path_for(resource)
      "/cards"
    end

end

class ApplicationController < ActionController::Base
      #before_action :configure_permitted_parameters, if: :devise_controller?
      def authorize_request(kind=nil)
      unless kind.include?(:author)
            redirect_to offers_path, notice:"You are not authorized perform this action"
      end
      
end

end

class ApplicationController < ActionController::Base
      before_action :configure_permitted_parameters, if: :devise_controller?
      
#       def authorize_request(kind=nil)
#       unless kind.include?(:author)
#            redirect_to offers_path, notice:"You are not authorized perform this action"
#       end
# end
      def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :role, :image])
            devise_parameter_sanitizer.permit(:account_update, keys: [:name,
            :image])
      end

      def user_params
            params.require(:user).permit!
      end
      
            
      


end

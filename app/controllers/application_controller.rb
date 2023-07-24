class ApplicationController < ActionController::Base
      def authorize_request(kind=nil)
      unless kind.include?(:author)
            redirect_to offers_path, notice:"You are nor athorized perform this action"
      end
end

class ApplicationController < ActionController::Base
  
	#acts_as_token_authentication_handler_for User
	protect_from_forgery with: :exception


	#skip_before_action :verify_authenticity_token, if: :json_request?

	before_action :authenticate_user!

	#before_action :authenticatr_with_token


	#protected

	#def json_request?
	#    request.format.json?
	#end




end

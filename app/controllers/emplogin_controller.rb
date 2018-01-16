class EmploginController < ApplicationController

skip_before_action :authenticate_user!





def index

	@user_name = params[:user_name]
	@password = params[:password]

	@employee = Employee.find_by(user_name: @user_name)

	if @employee.present?
		if @employee.password == @password

			

			#output = {'Login' => 'Done'}.to_json
			render :json => @employee
		else
			output = {'Login' => 'failed'}.to_json
			render :json => output
			
		end

	else 
			output = {'Login' => 'failed'}.to_json
			render :json => output

	end




end





end
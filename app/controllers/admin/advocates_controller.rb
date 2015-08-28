class Admin::AdvocatesController < ApplicationController
	before_action :authenticate
              layout "adminapplication"

    def index
		
	end
    def selected
		if params[:keyword].empty?
			@advocate = Advocate.all
			
			
		else 
			@advocate = Advocate.where(["#{params[:option]} like?","%#{params[:keyword]}%"])
			
		end
	end
 def show
     		advocate = Advocate.find(params[:id])
		@advocate = advocate.advertiser
		 
	end
     def edit
   		@advocate = Advocate.find(params[:id])
	end
    def update
  		@advocate = Advocate.find(params[:id])
  		@advocate.update(advocate_params)

  		redirect_to :action => :index
	end
   def destroy
  		@advocate = Advocate.find(params[:id])
  		@advocate.destroy

  		 redirect_to :action => :index
	end	
    # ....

    protected

    def authenticate
       authenticate_or_request_with_http_basic do |user_name, password|
           user_name == "username" && password == "password"
       end
    end

 private

    def advocate_params
   params.require(:advocate).permit(:name, :email, :advertiser_id, :phone, :account, :password, :count)
end
end

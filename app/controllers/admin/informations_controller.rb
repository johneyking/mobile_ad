class Admin::InformationsController < ApplicationController
	before_action :authenticate
              layout "adminapplication"

    def index
		
	end
    def selected
		if params[:keyword].empty?
			@information = Information.all
							
		else 
			@information = Information.where(["#{params[:option]} like?","%#{params[:keyword]}%"])
						
		end
	end
 def show
     		information = Information.find(params[:id])
		@information = information.advertiser
		 
	end
def edits
   		@information = Information.find(params[:id])
	end
    def update
  		@information = Information.find(params[:id])
  		@information.update(information_params)

  		redirect_to :action => :index
	end
   def destroy
  		@information = Information.find(params[:id])
  		@information.destroy

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

    def information_params
   params.require(:information).permit(:name, :email, :advertiser_id, :phone, :account, :password, :count)
end
end

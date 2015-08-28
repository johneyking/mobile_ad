class Admin::AdvertisesController < ApplicationController
	before_action :authenticate
              layout "adminapplication"

    def indexs
		
	end
    def selected
		if params[:keyword] .empty?
			@advertises = Advertise.all
			
		else 
			@advertises = Advertise.where(["#{params[:option]} like?","%#{params[:keyword]}%"])
		end
	end
 def show
     		@advertises = Advertise.find_by_advertise_id(params[:advertise_id])
		@advertises = @advertises.advertiser
		 
	end
  def edit
   		@advertises = Advertise.find_by_advertise_id(params[:advertise_id])
	end
    def update
  		@advertises = Advertise.find_by_advertise_id(params[:advertise_id])
  		@advertises.update(advertise_params)

  		redirect_to :action => :index
	end
   def destroy
  		@advertises = Advertise.find_by_advertise_id(params[:advertise_id])
  		@advertises.destroy

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

    def advertise_params
   params.require(:advertise).permit(:name, :email, :advertiser_id, :phone, :account, :password, :count)
end
end


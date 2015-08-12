class AdvertisesController < ApplicationController
before_action :authenticate_advertiser!  
	def index
		@advertise = Advertise.where(:advertiser_id => current_advertiser.id)
	end
       def new
              @advertise = Advertise.new
       end
	def create
  
             @advertise = Advertise.new(advertise_params)
             @advertise.advertiser_id = current_advertiser.id
             @advertise.save

             redirect_to :action => :index
      end
      def show
            @advertise = Advertise.find(params[:id])
      end
      def edit
      end

private
      def advertise_params
          
            params.require(:advertise).permit(:title, :content, :start_date_time, :end_date_time, :location, :max_number)


      end

end

class AdvertiseapisController < ApplicationController
	 def index

		@advertises = Advertise.all.select("title","end_date_time","location")
		render :json =>@advertises
	end
   
end

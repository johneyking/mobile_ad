class AdvocatesController < ApplicationController
	
	def index

		 @advocate=Advocate.find_by_account(params[:account])
		 if @advocate==nil
		 	render :json => Message.find_by_id(3)
		else
		 	
			if params[:password] == @advocate.password
		     
                             	 render :json => Message.find_by_id(1)
			else
		     	render :json => Message.find_by_id(2)

			end
		end
	end
	
	def create
		@advocate = Advocate.new(:name => params[:name],:account => params[:account],:password => params[:password],:email => params[:email],:phone => params[:phone])
		@advocate.save
	end


end

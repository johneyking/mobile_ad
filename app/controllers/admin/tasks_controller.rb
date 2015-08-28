class Admin::TasksController < ApplicationController
	before_action :authenticate
              layout "adminapplication"

    def index
		
	end
    def selected
		if params[:keyword].empty?
			@task = Task.all
			
		else 
			@task = Task.where(["#{params[:option]} like?","%#{params[:keyword]}%"])
		end
	end
 def show
     		task = Task.find(params[:id])
		@task = task.advertiser
		 
	end
def edit
   		@task = Task.find(params[:id])
	end
    def update
  		@task = Task.find(params[:id])
  		@task.update(task_params)

  		redirect_to :action => :index
	end
   def destroy
  		@task = Task.find(params[:id])
  		@task.destroy

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

    def task_params
   params.require(:task).permit(:name, :email, :advertiser_id, :phone, :account, :password, :count)
end
end

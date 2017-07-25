class MailController < ApplicationController

def index
	@users = User.all
	json_response(@users)
	
end

def create
	@user = User.create!(user_params)
	json_response(@user, :created)
end
def show
    json_response(@user)
  end

private
def user_params
params.permit(:email,:refresh_token,:oauth_token,:to,:body,:oauth_expires_at,:subject,:name,:uid)

end

def set_user
	@user = User.find(params[:id])
end
end

class UsersController < ApplicationController
def index
    @users = User.paginate(:page => params[:page], :per_page => 12)
  end

def show
  @user = User.find(params[:id])
end

end

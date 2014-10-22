class PagesController < ApplicationController
  def home	
  end

  def about	
  end
  def friends
  	 @users = User.all 
  end

end


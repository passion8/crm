class UsersController < ApplicationController
  
  def all
    @users = User.paginate(:page => params[:page])
  end

  def search
    @skill = params[:q]
    @users = User.tagged_with(@skill).paginate(:page => params[:page])
    respond_to do |format|
      format.html 
      format.js
    end
  end

  def profile
    @user = if params[:id].present?
              begin
                User.find(params[:id])
              rescue Exception => e
                nil
              end
            else
              current_user
            end
  end

end

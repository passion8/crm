class UsersController < ApplicationController
  
  def all
    @users = User.all
  end

  def search
    @skill = params[:q]
    @users = User.tagged_with(@skill)
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

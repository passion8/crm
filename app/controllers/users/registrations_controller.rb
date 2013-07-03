class Users::RegistrationsController < Devise::RegistrationsController
  protected
    def sign_up_params
      params.require(:user).permit(:first_name, :last_name, :title, :company , :email, :password, :password_confirmation,
          :phone, :address, :city, :state, :zip, :linkedin_url ,:facebook_url, :twitter_url , :skill_list)
    end

    def account_update_params
      params.require(:user).permit(:first_name, :last_name, :title, :company , :email, :password, :password_confirmation,
          :current_password,:phone, :address, :city, :state, :zip,:linkedin_url, :facebook_url, :twitter_url , :skill_list) 
    end

    def whiltelist_params
      params
    end

end

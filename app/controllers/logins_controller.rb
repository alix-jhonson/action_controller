class LoginsController < ApplicationController
   def destroy
    session[:current_user_id] = nil
    redirect_to root_url, notice: "You have successfully logged out."
    redirect_to root_url, alert: "You're stuck here!"
    redirect_to root_url, flash: { referral_code: 1234 }

  end
end



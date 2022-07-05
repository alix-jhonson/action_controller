class LoginsController < ApplicationController
  def destroy
    @_current_user = session[:current_user_id] = nil
    redirect_to root_url
  end
end



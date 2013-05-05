class Admin::BaseController < ApplicationController
	layout 'admin'

	delegate :current_user, :user_signed_in?, :to => :user_session
  helper_method :current_user, :user_signed_in?

  def user_session
  	UserSession.new(session)
  end

  def require_authentication
  	unless user_signed_in?
  		redirect_to :back, :alert => t('flash.alert.needs_login')
  	end
  end

  def require_no_authentication
  	redirect_to root_path if user_signed_in?
  end
end
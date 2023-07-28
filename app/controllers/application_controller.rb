class ApplicationController < ActionController::API
    include Pundit::Authorization

    rescue_from Pundit::NotAuthorizedError, with: :pundishing_user

    private

    #pundishing_user can be any name you like
  def pundishing_user
    flash[:notice] = "Access Denied."
    redirect_to root_path
  end
end

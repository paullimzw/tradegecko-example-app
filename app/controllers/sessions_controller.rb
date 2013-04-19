class SessionsController < ApplicationController
  def create
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    token = OAuth2::AccessToken.new(oauth_client, auth["credentials"]["token"], auth["credentials"].slice("refresh_token", "expires_at"))
    session[:user_id] = user.id
    set_session_from_access_token(token)
    redirect_to root_url
  end

  def destroy
    clear_session
    redirect_to root_url
  end

private
  def auth
    request.env["omniauth.auth"]
  end
end

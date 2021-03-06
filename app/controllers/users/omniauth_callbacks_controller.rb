class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def twitter
    omniauth_data = request.env["omniauth.auth"].to_hash
    user = User.find_or_create_from_twitter(omniauth_data)
    if user
      sign_in user
      redirect_to root_path, notice: "Welcome via Twitter #{user.first_name}!"
    else
      redirect_to root_path, alert: "Sorry didn't sign in with Twitter! contact us if problem persists."
    end
  end

  def facebook
    omniauth_data = request.env["omniauth.auth"].to_hash
    user = User.find_or_create_from_facebook(omniauth_data)
    if user
      sign_in user
      redirect_to root_path, notice: "Welcome via Facebook #{user.first_name}!"
    else
      redirect_to root_path, alert: "Sorry didn't sign in with Facebook! contact us if problem persists."
    end   
  end

  def google_oauth2
    omniauth_data = request.env["omniauth.auth"].to_hash
    user = User.find_or_create_from_google_oauth2(omniauth_data)
    if user
      sign_in user
      redirect_to root_path, notice: "Welcome via google_oauth2 #{user.first_name}!"
    else
      redirect_to root_path, alert: "Sorry didn't sign in with Google_oauth2! contact us if problem persists."
    end   
  end

  def github
    omniauth_data = request.env["omniauth.auth"].to_hash
    user = User.find_or_create_from_github(omniauth_data)
    if user
      sign_in user
      redirect_to root_path, notice: "Welcome via Github #{user.first_name}!"
    else
      redirect_to root_path, alert: "Sorry didn't sign in with Github! contact us if problem persists."
    end   
  end

end
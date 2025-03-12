class CookiesController < ApplicationController
  def accept
    session[:cookies_accepted] = true
    head :ok
  end

  def reject
    session[:cookies_accepted] = false
    head :ok
  end
end

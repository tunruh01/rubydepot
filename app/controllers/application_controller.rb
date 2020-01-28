class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def time
    Time.now.strftime("%I:%M%p")
  end
end

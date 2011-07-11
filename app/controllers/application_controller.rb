class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def fb_oauth_url(fb_page)
    fb_auth_response_url = url_for({:host => request.host, :controller => 'fb_pages', 
                                    :action => 'fb_auth_response', :id => fb_page.id})
    "https://www.facebook.com/dialog/oauth?client_id=#{FB_APP_ID}&redirect_uri=#{fb_auth_response_url}"
  end
  helper_method :fb_oauth_url
end

module ApplicationHelper
  def fb_oauth_url
    fb_auth_response_url = url_for({:host => request.host, :controller => 'fb_pages', :action => 'fb_auth_response'})
    "https://www.facebook.com/dialog/oauth?client_id=#{FB_APP_ID}&redirect_uri=#{fb_auth_response_url}"
  end
end

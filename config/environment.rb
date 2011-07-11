# Load the rails application
require File.expand_path('../application', __FILE__)

FB_APP_ID = "108623902538829"
FB_APP_SECRET = "42ef6209ad04dcf1e1d9d02ad7918975"

# Initialize the rails application
FbModportal::Application.initialize!

# Load the Rails application.
require File.expand_path('../application', __FILE__)

OAUTH_10_SUPPORT = true

# Initialize the Rails application.
RailsLti::Application.initialize!

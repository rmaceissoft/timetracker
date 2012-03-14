# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Timetracker::Application.initialize!

Timetracker::Application.configure do
  #global configuration go here
  
	config.gem "formtastic"
end

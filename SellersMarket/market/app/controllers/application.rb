# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
 
  include AuthenticatedSystem
  
  session :session_key => '_market_session_id'
  
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  
  protect_from_forgery  :secret => 'ccea57caf036a244af254562510e8b36'
  

  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
  
  def time_and_date 
    
     @date = Date.today
    
    
  end
  
end

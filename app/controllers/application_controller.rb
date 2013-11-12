class ApplicationController < ActionController::Base
  protect_from_forgery

     private
def current_conference 
	conference.find(session[:conference_id])
	rescue ActiveRecord::RecordNotFound 
	conference = conference.create 
	session[:cart_id] = conference.id
cart
end

end

class PagesController < ApplicationController
def home
	@users = User.all
	    

end

def dashboard
	@users = User.all
end

def dashboard_duo
	@users = User.all
end
 	
end
 
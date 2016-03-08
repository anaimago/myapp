class PagesController < ApplicationController
	def home
		@users = User.all
		@user_telephones = UserTelephone.all
	end

	def home_duo
		@users = User.all
		@user_telephones = UserTelephone.all
	end

	def home_tres
		@users = User.all
		@user_telephones = UserTelephone.all
	end

	def dashboard
		@users = User.all
		@user_telephones = UserTelephone.all
	end

	def dashboard_duo
		@users = User.all
		@user_telephones = UserTelephone.all
	end

	def dashboard_tres
		@users = User.all
		@user_telephones = UserTelephone.all
	end

 # GET /users/1
  # GET /users/1.json
  def show
  end
 	
end
 
class ContactController < ApplicationController

	def input
	end

	def output
		@first_name = params["first_name"]
		@last_name = params["last_name"]
	end
end
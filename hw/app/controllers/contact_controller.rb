class ContactController < ApplicationController

	#@f_name = "1"
	#@l_name = "2"

	def input

	end

	def output
		@first_name = params["first_name"]
		@last_name = params["last_name"]
	end
end
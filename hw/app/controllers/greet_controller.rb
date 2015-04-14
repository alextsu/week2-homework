class GreetController < ApplicationController

	def hello
	
		if params[:salutation].nil?
			@title = "Hello"
		else
			@title = params["salutation"]
		end
	end
end	
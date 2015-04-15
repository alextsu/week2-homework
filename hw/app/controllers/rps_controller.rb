class RpsController < ApplicationController



	def rps_list
		#in order: Rock, Paper, Scissors
		return["i.imgur.com/WjbjF6t.png", "i.imgur.com/FJI3UPL.png", "i.imgur.com/vqSLlS0.png"]
	end

	def index
		@rock = rps_list[0]
		@paper = rps_list[1]
		@scissors = rps_list[2]
	end

	def show
		if params[:your_pick] == rps_list[0]
			@your_pick = rps_list[0]
		elsif params[:your_pick] == rps_list[1]
			@your_pick = rps_list[1]
		else
			@your_pick = rps_list[2]
		end

		@opponent_pick = rps_list[rand(3)]

		if @your_pick == rps_list[0] && @opponent_pick == rps_list[1]
			@result = "Your Opponent Wins"
		elsif @your_pick == rps_list[0] && @opponent_pick == rps_list[2]
			@result = "You Win"
		elsif @your_pick == rps_list[1] && @opponent_pick == rps_list[0]
			@result = "You Win"
		elsif @your_pick == rps_list[1] && @opponent_pick == rps_list[2]
			@result = "Your Opponent Wins"
		elsif @your_pick == rps_list[2] && @opponent_pick == rps_list[0]
			@result = "Your Opponent Wins"
		elsif @your_pick == rps_list[2] && @opponent_pick == rps_list[1]
			@result = "You Win"
		else
			@result = "Tie Game"
		end	
	end

end
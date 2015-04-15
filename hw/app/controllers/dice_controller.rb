class DiceController < ApplicationController

	def start
	end

	def roll
		@numbers = [1,2,3,4,5,6].sample(2)
		@result = @numbers[0] + @numbers[1]

		#if it's your first roll
		if params[:point].nil?
			if @result == 7 || @result == 11
				@game_text = "You Win"
				@reset_text = "Start Over"
				@reset_page = "/dice"
			elsif @result == 2 || @result == 3 || @result == 12
				@game_text = "You Lose"
				@reset_text = "Start Over"
				@reset_page = "/dice"
			else
				@game_text = "Your goal is now #{@result}. Now try to get #{@result} again before you roll a 7"
				@reset_text = "Roll the Dice"
				@reset_page = "/dice/roll?point=#{@result}"
			end
		#if it isn't your first roll
		else
			if @result == 7
				@game_text = "You Lose"
				@reset_text = "Start Over"
				@reset_page = "/dice"
			elsif @result == params[:point].to_i
				@game_text = "You Win"
				@reset_text = "Start Over"
				@reset_page = "/dice"
			else
				@game_text = "Your goal is #{params[:point]} but you rolled #{@result}. You can roll again."
				@reset_text = "Roll again."
				@reset_page = "/dice/roll?point=#{params[:point]}"
			end	
		end
	end
end
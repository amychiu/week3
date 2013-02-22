class RpsController < ActionController::Base


	def getArray
		game = ["Rock", "Paper", "Scissors"]
		return game
	end

	def index
		@gameArray = getArray
	end
	
	def choose
		@pickedName = params[:name]
    	@random = getArray.sample
    
    	if (@pickedName === @random)
  			@scenario = "It's a tie!"
  		elsif ((@pickedName === "Rock" && @random === "Scissors")||
  			(@pickedName === "Paper" && @random === "Rock")||
  			(@pickedName === "Scissors" && @random === "Paper"))
  			@scenario = "You Win!"
  		else
  			@scenario = "I Win!"
 		end
	end

end
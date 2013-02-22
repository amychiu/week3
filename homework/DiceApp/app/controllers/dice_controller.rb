class DiceController < ActionController::Base

	def dice
		diceA = rand(6)+1
 		diceB = rand(6)+1
 		
 		rollValue = { "diceA" => diceA, "diceB" => diceB}
 		return rollValue
	end 
	
	def roll
		firstRoll = dice
		@diceA = firstRoll["diceA"]
		@diceB = firstRoll["diceB"]
		@point = @diceA + @diceB
		@response = nil
		@response2 = nil
    	@button_label = nil
    	@button_action= nil
    	
    	if @point == 7 || @point == 11
 	 		@response = "You win!"
 	 		@button_label = "Start Over"
 	 		@button_action= {:action => "index", :method => :get}
		elsif @point == 2 || @point == 3 || @point == 12
  			@response = "You lose!"
  			@button_label = "Play again."
  			@button_action= {:action => "index", :method => :get}
		else
  			@response = "Your point is now %d." %[@point]
  			@response2 = "Now try to get %d again before you roll a 7." %[@point]
  			@button_label = "Roll the dice."
  			@button_action= {:action => "again", :point => @point}
		end	
	
	end
	
	def again
		newRoll = dice
		@newDiceA = newRoll["diceA"]
		@newDiceB = newRoll["diceB"]
		@currentTotal = @newDiceA + @newDiceB
		@point = Integer(params[:point])
		
		@response = nil
 		@button_label = nil
 		@button_action= nil
 		
 		if @currentTotal==@point
 			@response = "You win!"
 	 		@button_label = "Start Over"
 	 		@button_action= {:action => "index"}
 		elsif @currentTotal == 7
 	 		@response = "You lose!"
 	 		@button_label = "Play again."
 	 		@button_action= {:action => "index"}
 		else
 			@response = "Your point is %d. You can roll again." %[@point]
 			@button_label = "Roll again."
 			@button_action= {:action => "again", :point => @point}
 		end
 		
		
	end
	
end

class DiceController < ApplicationController

  def update
   @dice = Dice.find_by_id(params[:id])
   @dice.title = params[:dice][:name]
   @dice.url = params[:dice][:value]
   @dice.save
   redirect_to dice_url
  end

  def index
    @dices = Dice.all
  end
  
  def roll
  	@diceA = rand(6)+1
 	@diceB = rand(6)+1
 	@point = @diceA + @diceB
 	pointVal = @point
    @response = nil
    @button_label = nil
    @button_action= nil
    
    if @point == 7 || @point == 11
 	 	@response = "You win!"
 	 	@button_label = "Play again."
 	 	@button_action= {:action => "index", :method => :get}
	elsif @point == 2 || @point == 3 || @point == 12
  		@response = "You lose!"
  		@button_label = "Play again."
  		@button_action= {:action => "index", :method => :get}
	else
  		@response = "Your point is %d. Try to roll it again." %[@point]
  		@button_label = "Roll the dice."
  		@button_action= {:action => "rollagain", :point => @point}
	end	
  end

  def rollagain
    @point = params[:point]
    @diceA = rand(6)+1
 	@diceB = rand(6)+1
 	@currentTotal = @diceA + @diceB
 	@response = nil
 	@button_label = nil
 	@button_action= nil
 	
    if @currentTotal == 7 || @currentTotal == 11
 	 	@response = "You lose!"
 	 	@button_label = "Play again."
 	 	@button_action= {:action => "index"}
 	elsif @currentTotal == @point
 		@response = "You win!"
 	 	@button_label = "Play again."
 	 	@button_action= {:action => "index"}
 	else
 		@response = "Your point is %d. You can roll again." %[@point]
 		@button_label = "Roll again."
 		@button_action= {:action => "rollagain", :point => @point}
 	end
    
  end

  def create
    @dice = Dice.new(params[:dice])
    @dice.save
    redirect_to dice_url
  end

end
class RpsController < ApplicationController

  def index
    @rps = Rps.all
  end

  def destroy
    @rps = Rps.find_by_id(params[:id])
    @rps.destroy
    redirect_to rps_url
  end

  def edit
    @rps = Rps.find_by_id(params[:id])
  end

  def update
    @rps = Rps.find_by_id(params[:id])
    @rps.title = params[:rps][:name]
    @rps.url = params[:rps][:url]
    @rps.save
    redirect_to rps_url
  end
  
  def find_name
  	d = Rps.all(:order => "Random()", :limit => 1)
  	dname = nil
   	d.each do |rps|
   		dname = rps.name
   	end
   	return dname
  end

  def show
  	@pickedName = params[:choose]
    @temp = find_name
    
    if (@pickedName === @temp)
  		@scenario = "It's a tie!"
  	elsif ((@pickedName === "Rock" && @temp === "Scissors")||
  		(@pickedName === "Paper" && @temp === "Rock")||
  		(@pickedName === "Scissors" && @temp === "Paper"))
  			@scenario = "You Win!"
  	else
  		@scenario = "I Win!"
 	end
  end

  def new
    @rps = Rps.new
  end

  def create
    @rps = Rps.new(params[:rps])
    @rps.save
    redirect_to rps_url
  end

end
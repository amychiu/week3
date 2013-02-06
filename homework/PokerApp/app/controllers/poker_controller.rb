class PokerController < ApplicationController

  def destroy
    @poker = Card.find_by_id(params[:id])
    @poker.destroy
    redirect_to poker_url
  end

  def edit
    @poker = Card.find_by_id(params[:id])
  end

  def update
    @poker = Card.find_by_id(params[:id])
    @poker.name = params[:card][:name]
    @poker.suit = params[:card][:suit]
    @poker.save
    redirect_to poker_url
  end

  def index
	@pokers = Card.all(:order => "Random()", :limit => 5)

    respond_to do |format|
      format.html
      format.json { render :json => @pokers }
    end
  end

  def show
    @poker = Card.find_by_id(params[:id])
  end

  def new
    @poker = Card.new
  end

  def create
    @poker = Card.new(params[:card])
    @poker.save
    redirect_to poker_url
  end

end
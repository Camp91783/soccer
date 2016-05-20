class LeagueController < ApplicationController
  
  def index
    @league=League.all 

  end

  def new
  @league = League.new(params[:name])
  
  end  



  def create
     @league = League.new(league_params)
    if @league.save
      redirect_to :league, notice: "Success"
    else
      flash.now[:alert] = "Couldn't save"
      render :new
    end
  end

  def show
    @player = Player.all
    @league = League.find(params[:id])
    @players = Player.all
  end

  def update
    @league = League.find(params[:id])
    if @league.update_attributes(league_params)
      redirect_to league_path(@league), notice: "Successfully Updated!!!!"
    else
      flash.now[:alert]="Couldn't update."
      render :edit
    end
  end

  def edit
    @league = League.find(params[:id])

  end

  def destroy
    @team = League.find(params[:name])
    @team.destroy
    redirect_to :league, notice: "Successfully deleted!!!"
  end


private
 def league_params
       params.require(:league).permit(:name)
 end

end

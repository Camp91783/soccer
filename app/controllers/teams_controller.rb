class TeamsController < ApplicationController
  
  def index
    @teams=Team.all 

  end

  def new
  @team = Team.new(params[:name])
  
  end  



  def create
     @team = Team.new(team_params)
    if @team.save
      redirect_to :teams, notice: "Success"
    else
      flash.now[:alert] = "Couldn't save"
      render :new
    end
  end

  def show
    @player = Player.all
    @team = Team.find(params[:id])
    @players = Player.all
  end

  def update
    @team = Team.find(params[:id])
    if @team.update_attributes(team_params)
      redirect_to team_path(@team), notice: "Successfully Updated!!!!"
    else
      flash.now[:alert]="Couldn't update."
      render :edit
    end
  end

  def edit
    @team = Team.find(params[:id])

  end

  def destroy
    @team = Team.find(params[:name])
    @team.destroy
    redirect_to :teams, notice: "Successfully deleted!!!"
  end


private
 def team_params
       params.require(:team).permit(:name)
 end

end
  


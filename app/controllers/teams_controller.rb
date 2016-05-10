class TeamsController < ApplicationController
  
  def index
    @teams=Team.all 

  end

  def new
    @team = Team.new
  end


  def create
    
  end

  def show
    @team = Team.find(params[:id])
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
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to :teams, notice: "Successfully deleted!!!"
  end
end
  


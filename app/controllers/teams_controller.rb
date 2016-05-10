class TeamsController < ApplicationController
  
  def index
    @teams=Teams.all 

  end

  def new
    @team = Team.new
  end


  def create
      @team = Team.new(team_params)
    if @team.save
      redirect_to :Teams, notice: "Success"
    else
      flash.now[:alert] = "Couldn't save"
      render :new
  end

  def show
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    if @team.update_attributes(team_params)
      redirect_to team_path(@wolf), notice: "Successfully Updated!!!!"
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
